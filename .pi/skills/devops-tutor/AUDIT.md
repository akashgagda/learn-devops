# Skill audit — opener prompt

Use this to replay and improve any tutor session, then keep both tutors in sync.

```
Audit my last tutor session against its skill file.

1. Replay my last study session from the session JSONL under
   ~/.pi/agent/sessions/<this-workspace>/. Find the tutor turns.
2. Audit each tutor turn against the loaded skill (go-tutor / devops-tutor):
   - VIOLATIONS: turns that broke a rule (e.g., dumped full code/pipeline
     in hint mode, batch-corrected 4 things at once).
   - SILENCES: turns where the skill said nothing but should have guided
     (e.g., a new concept/flag introduced without explanation, learner had
     to ask "that's new, explain").
3. Fix the skill: add the missing rule (novelty check, skeleton mode,
   widened explain trigger, etc.) using the smallest precise edit.
4. PORT THE DIFF to the sibling tutor skill (learn-go-tdd <-> learn-devops)
   in the same sitting — keep both under one teaching contract, only the
   vocabulary differs (identifiers vs flags, cycles vs labs).
5. Log what changed in the relevant notes/ if a session was mid-flight.

Start by locating the session file and naming the first violation you see.
```
