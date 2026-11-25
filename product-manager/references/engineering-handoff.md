# Engineering handoff

## When

Only after the user confirms the PRD (or explicitly asks to hand off a draft with assumptions listed).

## Handoff package

1. Product goal & non-goals  
2. In-scope / out-of-scope  
3. Critical user scenarios  
4. Core business rules & states (link tables)  
5. Interaction-critical behaviors  
6. Non-functionals (product-level: latency expectations as user-visible, offline, etc.)  
7. Acceptance criteria / test scenarios  
8. Confirmed decisions  
9. Technical constraints the user mandated  
10. **Tech-to-validate** list (no fake numbers)  
11. **Must not change without PM renegotiation**  

## Target

If `engineering-design` exists as a sibling skill, tell the user they can run `/engineering-design` with this package.  
Do not auto-start coding or optional planner skills unless asked.

## Boundary

| PM owns | Engineering owns |
|---------|------------------|
| Why / who / behavior / rules / acceptance | How / modules / storage / APIs / algorithms |
| Feasibility as product risk flags | Feasibility proof & design |

If engineering finds a product contradiction, return to `product-manager` — do not silently change product rules.
