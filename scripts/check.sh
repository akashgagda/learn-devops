#!/usr/bin/env bash
# Verify tooling needed for the current learning phase is available.
set -euo pipefail

phase="${1:-auto}"

check() {
  if command -v "$1" &>/dev/null; then
    printf '  ok      %s\n' "$1"
  else
    printf '  MISSING %s\n' "$1"
  fi
}

case "$phase" in
  auto)
    echo "Tooling check for learn-devops:"
    echo "Phase 1 — Foundations:"
    check git
    check bash
    check ssh
    check curl
    echo "  (Go tracked in ../learn-go-tdd)"
    echo "Phase 2 — Containers:"
    check docker
    check kubectl
    echo "Phase 3 — Automation:"
    check terraform
    check ansible
    ;;
  *) echo "Usage: check.sh [auto]"; exit 1 ;;
esac
