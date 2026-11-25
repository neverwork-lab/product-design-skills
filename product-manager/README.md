# product-manager

Portable [Agent Skills](https://agentskills.io/) orchestrator for professional **product management**. Cross-project, cross-industry, and host-agnostic (Claude Code, Codex, Cursor, OpenClaw, and other Agent Skills clients).

**Ships alone.** Optional specialists in the registry are not part of this folder; see `references/standalone-operation.md`.

## Use

Invoke via slash command where supported, or ask the agent to load this skill:

```text
/product-manager I want to add a quick-launch entry
/product-manager Clarify this feature and write a PRD
/product-manager Review this PRD for gaps
```

OpenClaw-style: `/skill product-manager`. If discovery fails, ask the agent to read this folder’s `SKILL.md`.

## Layout

```text
product-manager/
  SKILL.md
  README.md
  references/   # registry, routing, methods, gates, handoff, sources
  templates/    # light/full PRD, problem, decision log, review
```

Specialists are **siblings** of this folder under the same skills root (parent of `product-manager/`). Do not hard-code a single vendor path.

## Flow (typical L2)

Interview → problem → options → rules/interaction → review → PRD confirm → optional `/engineering-design`.

## Maintenance

1. Update third-party skills from pinned commits; refresh `references/installed-sources.md`.
2. Prefer one checkout; copy or symlink into each host’s skills root you use (see repo root README).
3. Do not bake project business knowledge into these global skills.
4. After installing or updating, start a new agent session and confirm the skill is discoverable.

## Uninstall

Remove this folder (and any specialists you installed) from each skills root you copied/symlinked into. Does not remove `engineering-design` or optional planner plugins.
