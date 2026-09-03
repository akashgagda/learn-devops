---
description: End-of-session ritual — known lab state, note updates, vault backup reminder
argument-hint: "[summary]"
---
End this session per the devops-tutor skill's "Ending a session":

1. Confirm the lab's current state (working, or broken-on-purpose with the fix logged). If a check command exists, run it and report the real output.
2. Update the topic note: key ideas + hands-on log + flashcards (append, never overwrite).
3. Tick `notes/progress.md` only if all four Done criteria (AGENTS.md) are met.
4. Update `notes/dashboard.md` if current position or tooling status changed.
5. Give me a 3-bullet summary and the next goal.
6. Remind me to run `./scripts/vault.sh backup` (my ritual — you never commit).

Session notes from me: ${1:-none}
