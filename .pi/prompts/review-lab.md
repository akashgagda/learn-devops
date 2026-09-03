---
description: Review a lab via the lab-reviewer subagent for correctness, safety, reproducibility
argument-hint: "<lab NN or slug>"
---
Delegate to the `lab-reviewer` subagent with this task: review the `${1:-current}` lab directory and its topic note, following the lab-reviewer's own instructions. When it returns, relay its findings to me as questions and suggestions only — I am the learner, and I make every change myself.
