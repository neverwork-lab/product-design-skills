# Skills catalog for product-design-skills

## Shipped in this repository

These folders are published with the repo (MIT). Install them as siblings under your agent skills root.

| Skill | Role | Provenance |
|-------|------|------------|
| `product-manager` | Orchestrator | This project |
| `business-rule-design` | Product-level business rules | Companion in this repo — **not** a known public third-party package under this name |
| `product-interaction-design` | Interaction / UX behavior | Companion in this repo — not a known public third-party package under this name |
| `product-requirements-review` | PRD / requirements review | Companion in this repo — related third-party “review-prd” skills exist elsewhere, but this folder is not a vendored copy |

See each skill’s `PROVENANCE.md`.

## Optional third-party (install separately)

Verify `../<name>/SKILL.md` exists before use. If absent → [standalone-operation.md](standalone-operation.md).

Pinned commits are examples — re-check upstream before installing.

| Skill | Repo | Commit (example) | License | Notes |
|-------|------|------------------|---------|-------|
| `grilling` | mattpocock/skills | `d65391149dbb5fe76478e76fa8d5122b2aa5a70e` | MIT | Interview engine |
| `domain-modeling` | mattpocock/skills | same | MIT | Glossary / product language |
| `prototype` | mattpocock/skills | same | MIT | Behavior/UI proof notes |
| `create-prd` | phuryn/pm-skills | `9af7bfd0bc47fdad43c2eaa7a43cd13918e7aaef` | MIT | Lean PRD (orchestrator templates fine for L2) |
| `opportunity-solution-tree` | phuryn/pm-skills | same | MIT | Discovery structure |
| `identify-assumptions-new` | phuryn/pm-skills | same | MIT | New product risks |
| `identify-assumptions-existing` | phuryn/pm-skills | same | MIT | Existing product risks |
| `prioritization-frameworks` | phuryn/pm-skills | same | MIT | RICE/ICE/MoSCoW/… |
| `prioritize-features` | phuryn/pm-skills | same | MIT | Prioritization workflow |
| `user-stories` | phuryn/pm-skills | same | MIT | Stories |
| `job-stories` | phuryn/pm-skills | same | MIT | Job stories |
| `wwas` | phuryn/pm-skills | same | MIT | Why-What-Acceptance |
| `test-scenarios` | phuryn/pm-skills | same | MIT | Acceptance scenarios |
| `interview-script` | phuryn/pm-skills | same | MIT | User interview scripts |
| `competitor-analysis` | phuryn/pm-skills | same | MIT | L3 selective |
| `define-problem-statement` | product-on-purpose/pm-skills | `3456e5e309f38ac2a66943f20d4aaf8031268dfb` | Apache-2.0 | Problem framing |
| `define-jtbd-canvas` | product-on-purpose/pm-skills | same | Apache-2.0 | JTBD |
| `define-hypothesis` | product-on-purpose/pm-skills | same | Apache-2.0 | Hypotheses |

When installing any of the above, keep upstream license files and update [THIRD_PARTY_NOTICES.md](../../THIRD_PARTY_NOTICES.md).

## Skipped on purpose

| Source | Reason |
|--------|--------|
| BMAD-METHOD full / `bmad-agent-pm` | Depends on full BMAD stack |
| deanpeters/Product-Manager-Skills | **CC BY-NC-SA 4.0** (NonCommercial) |
| phuryn marketing/GTM/growth | Out of core discovery→PRD scope |
| mattpocock grill-me, grill-with-docs, to-spec | Wrapper / engineering-oriented |
| product-on-purpose deliver-prd | Overlap with orchestrator templates / create-prd |

## Companion repo

- `engineering-design` (+ its companions) from software-engineering-skills — optional handoff sibling
