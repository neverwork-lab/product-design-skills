---
name: product-interaction-design
description: >-
  Designs product interaction behavior: entry points, user flows, information
  architecture, feedback, empty/loading/error/success states, undo/cancel, and
  consistency with existing product experience. Use when product-manager routes
  here, or when the user asks for interaction design, UX flows, or product
  behavior states — not visual branding or pixel UI systems.
disable-model-invocation: true
---

# Product Interaction Design

Focus on **what users do and what the product does in response**, not visual styling.

> Prefer unified entry `product-manager`.

## When to use

- New flows, entry points, navigation changes
- Multi-step tasks, wizards, confirmations
- State coverage: loading / empty / success / failure / disabled / retry / cancel
- Undo / recover / draft behavior
- Consistency with existing product patterns

## When not to use

- Brand/visual systems → UI design skills
- Business rule truth tables → `business-rule-design`
- Technical API/component architecture → `engineering-design`

## Workflow

```text
Interaction design:
- [ ] Primary jobs & user paths
- [ ] Entry points & IA impact
- [ ] Step-by-step happy path
- [ ] Alternate & exception paths
- [ ] Feedback & confirmation moments
- [ ] UI states matrix
- [ ] Effort / learnability notes
- [ ] Consistency with current product
- [ ] Acceptance-oriented interaction criteria
```

### Rules

1. Start from the job, not from a screen inventory.
2. Every critical action needs visible feedback and a defined failure path.
3. Prefer existing patterns in the current product unless change is justified.
4. Low-fidelity wireframes/ASCII/Mermaid are enough; do not edit production UI code unless asked.
5. Call out high interaction cost (extra clicks, modal stacks, hidden settings).

## Outputs

Use [templates/interaction-design.md](templates/interaction-design.md).  
State matrix: [references/state-matrix.md](references/state-matrix.md).
