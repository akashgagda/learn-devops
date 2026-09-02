#!/usr/bin/env bash
set -euo pipefail

# vault.sh — Obsidian vault helper for the notes/ directory.
#
# Usage:
#   ./scripts/vault.sh check      verify vault config is present and git-clean
#   ./scripts/vault.sh restore    restore notes/.obsidian from git if missing
#   ./scripts/vault.sh register   register the vault with Obsidian (sets it active, enables CLI)
#   ./scripts/vault.sh backup     stage + commit notes/ changes ("the learner's ritual")

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
VAULT="$REPO_ROOT/notes"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/obsidian"
OBSIDIAN_JSON="$CONFIG_DIR/obsidian.json"

die() { echo "error: $*" >&2; exit 1; }
require_git() { git -C "$REPO_ROOT" rev-parse --is-inside-work-tree &>/dev/null || die "not a git repo: $REPO_ROOT"; }

cmd_check() {
  [[ -d "$VAULT/.obsidian" ]] || die "notes/.obsidian missing — run: $0 restore"
  [[ -f "$VAULT/progress.md" ]] || die "notes/progress.md missing"
  require_git
  if [[ -n "$(git -C "$REPO_ROOT" status --porcelain -- notes)" ]]; then
    echo "vault: uncommitted changes in notes/"
  else
    echo "vault: ok (clean)"
  fi
}

cmd_restore() {
  require_git
  if [[ -d "$VAULT/.obsidian" ]]; then
    echo "vault config already present — nothing to restore"
  else
    git -C "$REPO_ROOT" restore --source=HEAD --worktree -- notes/.obsidian
    echo "restored notes/.obsidian from git"
  fi
}

cmd_register() {
  command -v python3 &>/dev/null || die "python3 required for register"
  mkdir -p "$CONFIG_DIR"
  python3 - "$VAULT" "$OBSIDIAN_JSON" <<'PY'
import json, os, random, sys, time
vault, cfg = os.path.realpath(sys.argv[1]), sys.argv[2]
data = {}
if os.path.exists(cfg):
    try:
        data = json.load(open(cfg))
    except Exception:
        data = {}
vaults = data.setdefault("vaults", {})
vid = next((k for k, v in vaults.items() if os.path.realpath(v.get("path", "")) == vault), None)
if not vid:
    vid = "".join(random.choice("0123456789abcdef") for _ in range(16))
    vaults[vid] = {"path": vault}
vaults[vid]["ts"] = int(time.time() * 1000)
for k in vaults:
    vaults[k]["open"] = (k == vid)
data["cli"] = True
tmp = cfg + ".tmp"
with open(tmp, "w") as f:
    json.dump(data, f, indent=2)
os.replace(tmp, cfg)
print("vault registered, set active, cli enabled")
PY
}

cmd_backup() {
  require_git
  if [[ -z "$(git -C "$REPO_ROOT" status --porcelain -- notes)" ]]; then
    echo "nothing to back up — notes/ is clean"
    return 0
  fi
  git -C "$REPO_ROOT" add notes
  git -C "$REPO_ROOT" commit -m "Backup vault $(date +%Y-%m-%d)"
  echo "vault backed up"
}

case "${1:-}" in
  check)    cmd_check ;;
  restore)  cmd_restore ;;
  register) cmd_register ;;
  backup)   cmd_backup ;;
  *) sed -n '3,10p' "$0" | sed 's/^# \{0,1\}//'; [[ -n "${1:-}" ]] && exit 1; exit 0 ;;
esac
