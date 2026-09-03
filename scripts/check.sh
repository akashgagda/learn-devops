#!/usr/bin/env bash
# Verify tooling needed for each roadmap phase is available.
# Usage: ./scripts/check.sh            -> all phases + summary
#        ./scripts/check.sh 2 3        -> only the listed phases
set -euo pipefail

ok_count=0
missing_count=0
phases=("$@")

wanted() {
  ((${#phases[@]} == 0)) && return 0
  local p
  for p in "${phases[@]}"; do [[ "$p" == "$1" ]] && return 0; done
  return 1
}

check() {
  if command -v "$1" &>/dev/null; then
    printf '  ok      %s\n' "$1"
    ok_count=$((ok_count + 1))
  else
    printf '  MISSING %s\n' "$1"
    missing_count=$((missing_count + 1))
  fi
}

echo "Tooling check for learn-devops:"

if wanted 1; then
  echo "Phase 1 — Foundations (Git, Linux, Networking, Servers):"
  check git
  check bash
  check ssh
  check curl
  check jq
  check shellcheck
  check make
  echo "  (Go tracked in ../learn-go-tdd)"
fi

if wanted 2; then
  echo "Phase 2 — Containers & Orchestration:"
  check docker
  check kubectl
  check helm
  check kind
fi

if wanted 3; then
  echo "Phase 3 — Automation & Delivery:"
  check terraform
  check ansible
  check gh
fi

if wanted 4; then
  echo "Phase 4 — Monitoring, Cloud & Practices:"
  check promtool
  check aws
  check gcloud
  check az
fi

echo
echo "summary: $ok_count ok, $missing_count missing"
if ((missing_count > 0)); then
  echo "missing tools are fine until their phase starts — see notes/progress.md"
fi
