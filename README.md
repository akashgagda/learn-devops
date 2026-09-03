# learn-devops

DevOps study workspace following the [milanm/DevOps-Roadmap](https://github.com/milanm/DevOps-Roadmap), tutored by Pi.

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
- `.pi/skills/` — `devops-tutor` (hands-on teaching loop) + `study-session` (study planning)
- `.pi/agents/` — `lab-reviewer` (read-only subagent, no bash/edit/write)
- `.pi/prompts/` — `/start`, `/done`, `/drill`, `/review-lab`
- `reference/DevOps-Roadmap/` — the cloned roadmap repo (curated resource lists; read-only, not in git — re-clone with `gh repo clone milanm/DevOps-Roadmap reference/DevOps-Roadmap`)
- `scripts/check.sh` — tooling availability per phase
- `scripts/vault.sh` — Obsidian vault helper (`check` / `restore` / `register` / `backup`)
- `AGENTS.md` — workspace contract (Pi loads it at startup)
- `.pi/settings.json` — startup model pinned to the omniroute `stack` combo (`omni/stack`); change with `/model` + Ctrl+S if needed

## Usage

```sh
pi                     # AGENTS.md makes the tutor role the default posture
/start                 # begin a session: recall questions + tooling check
/drill                 # flashcard-only minimum session
/done                  # known lab state, update notes, remind me to back up
/review-lab 06         # delegates to the lab-reviewer subagent
```

## Order

Git → Go (already in progress in `../learn-go-tdd`) → Linux & Bash →
Networking & Security → Server Management → Docker → Kubernetes →
Terraform/IaC → CI/CD → Monitoring → Cloud → Practices → DevSecOps.

## Rules

- One topic at a time, in roadmap order.
- Hands-on beats reading: every topic ends with something built or broken-and-fixed locally.
- The learner runs every command; hints and next commands, never full scripts.
- Progress is tracked only in `notes/progress.md`.
- Git is the learner's ritual — never commit unless asked.
