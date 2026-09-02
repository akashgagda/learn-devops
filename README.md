# learn-devops

DevOps study workspace following the [milanm/DevOps-Roadmap](https://github.com/milanm/DevOps-Roadmap), tutored by OpenCode.

```bash
./scripts/check.sh       # verify tooling available for the current phase
./scripts/vault.sh check # verify the Obsidian vault is intact
```

## Layout

- `NN-<slug>/` — one lab directory per roadmap topic when a topic needs files (scripts, configs, pipelines)
- `notes/` — Obsidian vault:
  - `notes/progress.md` — the roadmap as a checklist. **Single source of truth**
  - `notes/dashboard.md` — current position + machine tooling status
  - `notes/NN-<slug>.md` — one note per topic: key ideas, hands-on log, flashcards
  - `notes/_templates/topic.md` — the note template
- `.opencode/agents/tutor.md` — the tutor agent (default)
- `reference/DevOps-Roadmap/` — the cloned roadmap repo (curated resource lists; read-only, not in git — re-clone with `gh repo clone milanm/DevOps-Roadmap reference/DevOps-Roadmap`)
- `scripts/check.sh` — tooling availability per phase
- `scripts/vault.sh` — Obsidian vault helper (`check` / `backup`)
- `AGENTS.md` — workspace contract
- `opencode.json` — opencode config (tutor as default agent)

## Order

Git → Go (already in progress in `../learn-go-tdd`) → Linux & Bash →
Networking & Security → Server Management → Docker → Kubernetes →
Terraform/IaC → CI/CD → Monitoring → Cloud → Practices → DevSecOps.

## Rules

- One topic at a time, in roadmap order.
- Hands-on beats reading: every topic ends with something built or broken-and-fixed locally.
- Progress is tracked only in `notes/progress.md`.
- Git is the learner's ritual — never commit unless asked.
