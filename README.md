# learn-devops

DevOps study workspace following the [milanm/DevOps-Roadmap](https://github.com/milanm/DevOps-Roadmap), tutored by OpenCode.

```bash
./scripts/check.sh       # verify tooling available for the current phase
```

## Layout

- `01-git/`, `03-linux/` … `NN-<slug>/` — one directory per roadmap topic (labs, scripts, configs)
- `notes/` — Obsidian vault:
  - `notes/progress.md` — the roadmap as a checklist. **Single source of truth**
  - `notes/NN-<slug>.md` — one note per topic: key ideas, hands-on log, flashcards
  - `notes/_templates/topic.md` — the note template
- `.opencode/agents/` — `tutor` (default agent)
- `reference/DevOps-Roadmap/` — the cloned roadmap repo (curated resource lists; don't edit)
- `scripts/check.sh` — verify tooling available for the current phase
- `AGENTS.md` — workspace contract

## Order

Git → Go (already in progress in `../learn-go-tdd`) → Linux & Bash →
Networking & Security → Server Management → Docker → Kubernetes →
Terraform/IaC → CI/CD → Monitoring → Cloud → Practices → DevSecOps.

## Rules

- One topic at a time, in roadmap order.
- Hands-on beats reading: every topic ends with something built or broken-and-fixed locally.
- Progress is tracked only in `notes/progress.md`.
- Git is the learner's ritual — never commit unless asked.
