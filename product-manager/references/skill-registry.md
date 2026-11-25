# Skill capability registry

Paths are siblings of `product-manager/` under the **active host’s skills root** (parent of this skill directory). Resolve via the parent of this folder; never hard-code a vendor path or a project repo path.

**Status legend**

| Status | Meaning |
|--------|---------|
| **shipped** | Included in this repository under `product-manager/` |
| **optional** | Not shipped here. Use only if the sibling folder exists; otherwise follow [standalone-operation.md](standalone-operation.md) |

Before citing any **optional** skill, verify `../<name>/SKILL.md` exists. If missing, use the orchestrator fallback — do not pretend the specialist ran.

| Capability | Primary | Path | Status | Use when | Not when | Timing | In → Out | Fallback if missing |
|------------|---------|------|--------|----------|----------|--------|----------|---------------------|
| Orchestration | `product-manager` | this skill | **shipped** | Any PM entry | Pure tech/arch | Always first | Goal → routed product work | — |
| Context discovery | `product-manager` | self | **shipped** | Existing product | — | Stage 1 | Facts vs current behavior | Project reads |
| Interview pacing | `product-manager` | [interview-methods.md](interview-methods.md) | **shipped** | Material uncertainty | L0 clear tweak | Stages 1–2 | Ask → decisions | — |
| Requirements interview | `grilling` | `../grilling/` | optional | Heavy stakeholder grill | L0 | Stages 1–2 | Ask → decisions | interview-methods.md |
| Customer interview prep | `interview-script` | `../interview-script/` | optional | External user interviews | Internal grill only | Discovery | Topic → script | Draft script via interview-methods |
| Discovery structure | `opportunity-solution-tree` | `../opportunity-solution-tree/` | optional | Map outcome→opportunities→solutions | Locked problem+solution | Stage 2–4 | Outcome → OST | discovery-workflow.md |
| Problem definition | `define-problem-statement` | `../define-problem-statement/` | optional | Frame problem | Spec already agreed | Stage 3 | → problem stmt | templates/problem-statement.md |
| JTBD / jobs | `define-jtbd-canvas` | `../define-jtbd-canvas/` | optional | Jobs/outcomes | Pure UI polish | Stage 2–3 | → JTBD | Short job narrative in decision log |
| Job-shaped backlog | `job-stories` | `../job-stories/` | optional | When/where/I want | JTBD already enough | Spec | → job stories | Scenarios in PRD |
| Hypotheses | `define-hypothesis` | `../define-hypothesis/` | optional | Testable hypotheses | No uncertainty | Stage 2–4 | → hypotheses | Assumptions section in decision log |
| Assumptions (new) | `identify-assumptions-new` | `../identify-assumptions-new/` | optional | New product risks | Existing-only | L3 / new | → risk list | Decision log assumptions |
| Assumptions (existing) | `identify-assumptions-existing` | `../identify-assumptions-existing/` | optional | Existing feature risks | Brand-new venture | L2+ | → risk list | Decision log assumptions |
| Domain modeling | `domain-modeling` | `../domain-modeling/` | optional | Glossary/concepts | Pure visual UX | Stages 3–5 | → glossary | Short glossary in PRD |
| Solution design | `product-manager` | [product-design-methods.md](product-design-methods.md) | **shipped** | Options & recommendation | Trivial single option | Stage 4 | → chosen approach | — |
| Business rules | `business-rule-design` | `../business-rule-design/` | **shipped** | Complex rules/states | One-liner behavior | Stage 5 | → rules/tables | business-rule-methods.md |
| UX interaction | `product-interaction-design` | `../product-interaction-design/` | **shipped** | Flows/states/feedback | Visual brand systems | Stage 5 | → interaction | product-design-methods.md + PRD states |
| Prototype | `prototype` | `../prototype/` | optional | Need behavior proof | Already clear | Stage 4–5 | → notes | Describe validation plan only |
| Prioritization methods | `prioritization-frameworks` | `../prioritization-frameworks/` | optional | Choose method | Fake precision | Stage 6 | → method | Qualitative MoSCoW |
| Feature prioritization | `prioritize-features` | `../prioritize-features/` | optional | Rank items | Method-only | Stage 6 | → ranked scope | Must/Should/Later/Won't table |
| MVP scoping | `product-manager` | self | **shipped** | Must/should/later/won't | — | Stage 6 | → scope | — |
| User stories | `user-stories` | `../user-stories/` | optional | Story breakdown | Replace problem def | Stage 7 | → stories | Scenarios in PRD |
| Acceptance (WWA) | `wwas` | `../wwas/` | optional | Why-What-Acceptance | Replace full PRD | Stage 7–9 | → WWA | Acceptance column in PRD |
| Test scenarios | `test-scenarios` | `../test-scenarios/` | optional | Acceptance scenarios | Unit test code | Stage 7–9 | → scenarios | Exceptions & edges in PRD |
| PRD writing | `create-prd` | `../create-prd/` | optional | Lean PRD draft | Before problem understood | Stage 9 | → PRD | orchestrator PRD templates (preferred for L2) |
| Competitor / market | `competitor-analysis` | `../competitor-analysis/` | optional | L3 differentiation | Every small feature | Stage 2–4 L3 | → comparison | Short comparison in discovery notes |
| Product review | `product-requirements-review` | `../product-requirements-review/` | **shipped** | Critique PRD | First draft authoring | Stage 8 | → review+gate | templates/requirements-review.md self-review |
| Engineering handoff | `engineering-design` | sibling if installed | optional | After confirmed PRD | PM-only request | Stage 10 | → handoff | engineering-handoff.md brief only |

## Do not cite as available unless installed

| Item | Reason |
|------|--------|
| BMAD `bmad-agent-pm` + facilitate stack | Cannot run independently without full BMAD |
| deanpeters Product-Manager-Skills | CC BY-NC-SA — NonCommercial; skipped for this MIT distribution |
| phuryn GTM/marketing/growth plugins | Out of core PM discovery→PRD scope |
| mattpocock `grill-me` / `grill-with-docs` | Thin wrappers; prefer `grilling` if present |
| mattpocock `to-spec` | Engineering/issue-tracker oriented |
| product-on-purpose `deliver-prd` | Overlap with `create-prd` / orchestrator templates |

## Invocation

Most Agent Skills hosts provide no native Skill RPC. **Read** the specialist `SKILL.md` only when the file exists, then follow it. One primary owner per artifact; supplements only for named gaps.
