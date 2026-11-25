# Business rule methods (orchestrator)

When rules are non-trivial:

1. Prefer `../business-rule-design/SKILL.md` **if that sibling exists**.
2. Otherwise apply the **minimum checklist below** (no external skill required).

## Minimum expectations for L2/L3 rule-heavy work

- Concept glossary (product language)
- States + legal transitions
- Rule table with priority
- Conflict resolution
- Decision table for dense combinations
- Exception & boundary cases
- Observable acceptance checks

Stay in **policy** space. Scoring engines, retrieval algorithms, and storage designs belong in engineering handoff, not as fake “product rules”.
