---
tags: [devops, roadmap, plan, career]
---

# 3-Month Plan — DevOps track + job search

Created 2026-09-05. Target: **DevOps / Platform Engineer** job by early December 2026.
Companion plan: `../learn-go-tdd/notes/3-month-plan.md` (Go weeks 1–3 live there).

## Shape of the day (10+ hrs)

- **Mornings** → Go book until ~Sep 27, then portfolio app work.
- **Afternoons** → DevOps roadmap, hands-on labs (roadmap order, one topic at a time).
- **Last hour, every day** → job-prep block (below). Non-negotiable even on catch-up days.

## Phase plan (roadmap order unchanged — see [[progress]])

### Weeks 1–2 (Sep 7–20) — Foundations
- [ ] 01 - Git (branching, rebase, hooks — you already have the note)
- [ ] 02 - Programming: Go → parallel track, done by Sep 27
- [ ] 03 - Linux & Scripting (Bash) — install shellcheck now
- [ ] 04 - Networking & Security (DNS, HTTP/TLS, firewall, SSH)

### Weeks 3–4 (Sep 21–Oct 4) — Containers
- [ ] 05 - Server Management (Nginx as reverse proxy for the Go app)
- [ ] 06 - Containers: Dockerize the Go app from `../learn-go-tdd/app`
- [ ] 07 - Kubernetes: kind cluster, manifests, Helm chart for the same app

### Weeks 5–6 (Oct 5–18) — Automation & Delivery
- [ ] 08 - IaC: Terraform (local + one cloud), Ansible basics
- [ ] 09 - CI/CD: GitHub Actions pipeline for the Go app — test → build → image → deploy
- [ ] 10 - Monitoring: Prometheus + Grafana scraping the app's /metrics

### Weeks 7–8 (Oct 19–Nov 1) — Cloud & glue
- [ ] 11 - One cloud provider end-to-end (pick **AWS**, most postings) — free tier only
- [ ] 12 - Practices: Scrum/SDLC reading + retro on your own workflow
- [ ] Bonus - DevSecOps: trivy/grype in CI, secret scanning
- **Checkpoint Oct 31:** portfolio project deployed, repo + pipeline + dashboards public.

### Weeks 9–12 (Nov 2–Dec 5) — hiring sprint
- Roadmap topics become maintenance drills; the day flips to job search.
- [ ] Nov 2–9: resume + LinkedIn rewrite, 2 project write-ups (Go app + infra), 2 mock interviews
- [ ] Nov 10–30: 10 applications/week, take-homes, system-design prep (scaling the app you built)
- [ ] Dec 1–5: final-round prep, offer negotiation reading

## Job-prep daily block (last hour)

| Days | Activity |
| --- | --- |
| Mon/Tue | 1 LeetCode-style easy/medium (Go) — infra screens still ask |
| Wed | Flashcard drills both vaults (`/drill`) |
| Thu | Resume/GitHub polish — one artifact per week |
| Fri | 1 mock interview or recorded self-answer (behavioral + technical) |
| Sat | Weekly retro: tick boxes, write next week's lab goals |
| Sun | Rest or light review |

## Portfolio definition of done (by Oct 31)

1. Go web service (book app, extended) with tests + `/metrics`.
2. Dockerfile + Compose for local dev.
3. Kubernetes manifests + Helm chart, running in kind locally and on one cloud cluster.
4. GitHub Actions: lint → test -race → build image → deploy.
5. Terraform that recreates the whole cloud side from scratch.
6. Grafana dashboard + README that reads like a case study.

## Milestones

| Date | Done means |
| --- | --- |
| Sep 20 | Git, Linux/Bash, Networking ticked; Go ch. 20 green |
| Sep 27 | Go book complete; app running behind Nginx |
| Oct 18 | Docker → K8s → Terraform → CI/CD → Monitoring all on the app |
| Oct 31 | **Portfolio public** — everything deployed on AWS free tier |
| Dec 5 | Applications out, interviews happening, offers in negotiation |

## Tooling to install as phases start

- Now: shellcheck · Week 3: kubectl, helm, kind · Week 5: terraform, ansible · Week 7: aws cli
