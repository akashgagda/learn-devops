# AGENTS.md — learn-devops

The user is learning DevOps following the **milanm/DevOps-Roadmap** — the only curriculum, in roadmap order. Teaching pedagogy lives in the `tutor` agent; this file is the workspace contract.

## Learner profile

- Beginner (Go is their first language, in progress in the sibling workspace `../learn-go-tdd`).
- One topic at a time, hands-on first: every topic ends with something built or broken-and-fixed.
- The learner runs every command. Hints and next commands, never full scripts to paste.
- Break things on purpose; recovery is the lesson.

## Layout

- Roadmap: `reference/DevOps-Roadmap/README.md` (cloned repo — read-only reference, not in git).
- `notes/progress.md` — roadmap as checklist. **Single source of truth** for progress.
- `notes/NN-<slug>.md` — one note per topic: key ideas, hands-on log, `Question::Answer #flashcards` cards.
- `notes/dashboard.md` — current position + machine tooling status.
- `notes/_templates/topic.md` — the topic note template.
- `NN-<slug>/` — lab directory per topic when it needs files (scripts, configs, pipelines).
- `scripts/check.sh` — tooling availability per phase.

## Commands

| Goal | Command |
| --- | --- |
| Tooling check | `./scripts/check.sh` |
| Obsidian vault | `./scripts/vault.sh check` / `backup` |

## Done when (a topic)

1. Learner can explain the topic's core ideas in their own words.
2. A hands-on artifact exists (lab dir, repo, running container/pipeline — locally reproducible).
3. Topic note written: key ideas + hands-on log + flashcards.
4. Checkbox ticked in `notes/progress.md`.

## Non-negotiables

- Roadmap order; no skipping ahead. "We'll meet that later" is a complete answer.
- Prefer the roadmap's FREE resources for reading; everything else is practice.
- Go questions go to `../learn-go-tdd` — here Go is background, not curriculum.
- Verify before claiming: run the command, see the output, before saying it works.
- Respect the learner's notes — append or ask, never overwrite.
- Git is the learner's ritual — never stage, commit, push, or branch unless asked.
- No `path:line` citations unless the user asked to "cite".
