---
name: product-requirements-review
description: >-
  Independently reviews PRDs and product requirements for wrong problem framing,
  missing scenarios, rule conflicts, undefined states, untestable language,
  scope creep, and tech-spec leakage. Use when product-manager routes here, or
  when the user asks to review, critique, or find holes in a PRD or product spec.
disable-model-invocation: true
---

# Product Requirements Review

Review as a skeptical PM / BA / QA — not as the author defending the doc.

> Prefer unified entry `product-manager`. For "only review this PRD", this skill may run directly.

## Stance

- Demand evidence for load-bearing claims
- Prefer concrete missing scenarios over vague "unclear"
- Do **not** invent issues to fill a report
- Do **not** rewrite the whole PRD unless asked

## Workflow

```text
PRD review:
- [ ] Scope & mode stated
- [ ] Problem fit
- [ ] Users / scenarios coverage
- [ ] Scope & non-goals
- [ ] Rules / states / exceptions
- [ ] Interaction completeness
- [ ] Acceptance testability
- [ ] Assumptions & open decisions
- [ ] Tech leakage check
- [ ] Findings + gate
```

### Severity

| Level | Meaning |
|-------|---------|
| **P0** | Blocks build or will ship wrong product behavior |
| **P1** | Likely gap/conflict; should fix before engineering handoff |
| **P2** | Clarity / polish |

### Finding format

1. Severity  
2. Problem  
3. Location (req id / section)  
4. Trigger scenario / counterexample  
5. User/business impact  
6. Suggested fix  
7. Verification after fix  

## Lenses

Load [references/review-lenses.md](references/review-lenses.md) for L2/L3 or inconclusive first passes.

## Independent agent

If a separate read-focused sub-agent is available, give it the PRD (+ cited product docs only) and merge findings. If not, run this as a distinct phase and state that limitation.

## Outputs

Use [templates/requirements-review.md](templates/requirements-review.md).  
Gate: **pass** | **revise** | **block**.
