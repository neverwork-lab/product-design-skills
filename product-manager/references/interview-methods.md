# Interview methods

## Defaults under product-manager

1. **One primary question per round** (or 2–3 tightly coupled).
2. Structure material questions as: current understanding → uncertainty → why it matters → options → tradeoffs → **recommendation** → ask for confirmation.
3. Word questions so “yes” can accept your recommendation when appropriate.
4. Maintain: confirmed facts, confirmed requirements, decisions, assumptions, recommendations, open items, rejected options, change log.
5. Look up product/code facts yourself.
6. End grilling when blocking uncertainty is gone — then design/spec, don’t keep asking.

## Using `grilling` (optional)

**Only if** `../grilling/SKILL.md` exists: read it and any `LOCAL-CONSTRAINTS.md`.  
Upstream grilling may allow multi-question frontiers; **under this orchestrator, shrink each round** to the highest-leverage frontier items only.

If `grilling` is absent, this document **is** the interview protocol — do not fail the session.

## Using `interview-script` (optional)

**Only if** installed: for research with real end users (not the builder). Produce a script; do not pretend interview data exists.

If absent, draft a short interview outline yourself when the user needs one.

## Confirmation rules

- Low-risk inferable items → propose default + mark assumption.
- Goals, scope, critical rules, major UX forks, irreversible calls → need user confirmation.
- Partial confirmation ≠ “all requirements confirmed”.
- If a later answer contradicts an earlier decision, update the decision log and dependent requirements immediately.
