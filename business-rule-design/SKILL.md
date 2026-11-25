---
name: business-rule-design
description: >-
  Designs product-facing business rules, domain concepts, states, priorities,
  conflicts, exceptions, and decision tables without turning them into technical
  algorithms. Use when product-manager routes here, or when the user explicitly
  asks to design business rules, state transitions, eligibility, pricing rules,
  permission rules, or conflict resolution for product behavior.
disable-model-invocation: true
---

# Business Rule Design

Own **product-level** rules: what the system must do, for whom, under which conditions — not how code implements it.

> Prefer unified entry `product-manager`.

## When to use

- Multi-condition eligibility / permissions / limits
- State machines with business meaning
- Rule priority and conflict resolution
- Exceptions, special cases, grace periods
- Decision tables for acceptance and QA

## When not to use

- Ranking/search/optimization algorithms → hand to `engineering-design` / `algorithm-design` after PRD
- Visual layout / UI chrome → `product-interaction-design` or design skills
- Pure PRD packaging → `create-prd`

## Workflow

```text
Business rule design:
- [ ] Concepts & glossary terms
- [ ] Actors / objects / ownership
- [ ] States & allowed transitions
- [ ] Trigger conditions
- [ ] Rule inventory (normal + exception)
- [ ] Priority / conflict resolution
- [ ] Boundary & undefined-behavior bans
- [ ] Decision table(s)
- [ ] Product acceptance checks
```

### Rules

1. Name concepts precisely; avoid overloaded words.
2. Separate **policy** (product) from **mechanism** (engineering).
3. Every rule needs: trigger, condition, action, owner, exception path.
4. Conflicting rules need an explicit total order or decision table — never "smart handle".
5. Ban vague language: "适当", "尽量", "自动优化" without measurable meaning.
6. Provide at least one normal example and one exception/counterexample.

## Outputs

Use [templates/business-rules.md](templates/business-rules.md).  
Checklist: [references/rule-checklist.md](references/rule-checklist.md).
