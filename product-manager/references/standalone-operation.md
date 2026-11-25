# Standalone / degraded operation

## What this repo ships

Always expected after `scripts/install-skills`:

- `product-manager`
- `business-rule-design`
- `product-interaction-design`
- `product-requirements-review`

If a **shipped** sibling is missing from the skills root, prefer re-running install. Temporary fallbacks still exist (below).

## Optional third-party

Names such as `grilling`, `create-prd`, `define-problem-statement` are **not** in this repo. Use only if present.

## Before loading any specialist

1. Resolve sibling path under the active skills root.
2. If `SKILL.md` is missing → **do not invent** that the skill ran.
3. Use the fallback and note `specialist missing: <name>`.

## Fallbacks

| Need | Preferred | Fallback |
|------|-----------|----------|
| Interview | `grilling` if present | [interview-methods.md](interview-methods.md) |
| Discovery | optional OST/JTBD skills | [discovery-workflow.md](discovery-workflow.md) |
| Problem | `define-problem-statement` if present | [../templates/problem-statement.md](../templates/problem-statement.md) |
| Business rules | **shipped** `business-rule-design` | [business-rule-methods.md](business-rule-methods.md) |
| Interaction | **shipped** `product-interaction-design` | states in PRD / [product-design-methods.md](product-design-methods.md) |
| Review | **shipped** `product-requirements-review` | [../templates/requirements-review.md](../templates/requirements-review.md) labeled self-review |
| PRD | optional `create-prd` | orchestrator PRD templates |
| Handoff | `engineering-design` if present | [engineering-handoff.md](engineering-handoff.md) |

Run `scripts/check-skills` to print the live matrix.
