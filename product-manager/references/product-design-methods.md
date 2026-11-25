# Product design methods

## Solution design

When tradeoffs are real, compare 2–3 options on:

- User value, ease, learning cost
- Coverage of the job
- Interaction complexity
- Fit with current product
- Maintenance / extensibility (product sense)
- Feasibility risk (flag for engineering — don’t fake certainty)

Recommend one; reject others with reasons. Do **not** invent fake alternatives.

## Detailed design (pick relevant)

- Structure / roles / permissions
- Flows (Mermaid)
- Interaction states — use `product-interaction-design` **if installed**, else specify empty/loading/error/permission/success feedback in the PRD
- Business objects & rules — use `business-rule-design` / `domain-modeling` **if installed**, else [business-rule-methods.md](business-rule-methods.md) + a short glossary
- Defaults, preconditions, happy/exception paths
- Scope: must / should / later / won't
- Evolution notes

## Priority & MVP

Use `prioritization-frameworks` + `prioritize-features` **when those siblings exist**.  
Without them (or without real data), use qualitative MoSCoW / value-vs-cost — **do not fabricate precise RICE numbers**.

## Spec quality

Each critical requirement needs id, scenario, trigger, preconditions, expected behavior, rules, results, exceptions, priority, acceptance.  
Ban untestable filler (“智能处理”) unless a measurable definition is attached or marked tech-to-validate.
