# Routing matrix

## Task type → default mode

| Signal | Mode |
|--------|------|
| New product / “做一个…软件” | new-product-discovery |
| Add a feature | new-feature-analysis |
| Improve existing UX/flow | existing-feature-optimize |
| Feedback / complaints | feedback-analysis |
| Process / workflow | process-design |
| Interaction / states | interaction-design |
| Compare options | solution-compare |
| MVP / cut scope | mvp-scoping |
| Priority | prioritization |
| Stories / scenarios | scenario-analysis |
| Write PRD from known decisions | prd-writing |
| Improve existing PRD | prd-improve |
| Review / find holes | requirements-review |
| Change after confirmation | change-impact |

## Complexity

Score blast radius, uncertainty, rule complexity, UX risk, irreversibility (0–3). Level ≈ max; upgrade for money/safety/core journey risk even if “small”.

## Mode × level → stages & specialists

| Mode | L0 | L1 | L2 | L3 |
|------|----|----|----|----|
| new-feature-analysis | clarify behavior | interview light + light PRD | discovery→rules/UX→review→PRD | treat as major initiative |
| new-product-discovery | n/a | rare lean canvas-ish | deep discovery + MVP + review | full L3 path + competitor as needed |
| requirements-review | rare | light review | **review only** | review + evidence |
| change-impact | note + patch | impact + update light PRD | impact across rules/scenarios + re-review | re-open MVP/strategy if needed |
| interaction-design | behavior note | interaction + acceptance | + rules if coupled + review | + IA across product |
| process-design / rules-heavy | — | light rules | `business-rule-design` + review | + domain-modeling |

**Always for L2/L3 before handoff:** review gate pass — via `product-requirements-review` if installed, else orchestrator self-review with `templates/requirements-review.md` (label clearly).

## Simulated routing

| Case | Level | Mode | Load |
|------|-------|------|------|
| A 保存→确认 文案 | L0 | existing-feature-optimize | clarify only |
| B 快捷启动 | L1 | new-feature-analysis | grill light → light PRD |
| C 自动选镜+镜头重复限制 | L2 | new-feature-analysis | discovery → problem → rules/interaction → review → full PRD (**no algorithm**) |
| D AI 知识管理新产品 | L3 | new-product-discovery | JTBD/OST/assumptions → MVP → review → phased PRD |
| E 检查 PRD 漏洞 | — | requirements-review | `product-requirements-review` only |
| F 用户指定某种数据库做收藏 | L1–L2 | new-feature-analysis | product behavior first; DB = tech constraint/handoff |
| G 中途改核心规则 | change-impact | revise decision log + affected reqs; remove conflicts |
| H Web/Android/Desktop/SaaS/Agent/greenfield | same skills | context-adaptive; no stack lock-in |

## Conflict policy

One primary specialist per artifact. No A→B→A loops. Orchestrator pacing overrides third-party “ask everything now” habits.
