# Contributing

Thanks for contributing to **product-design-skills**.

## Principles

- Keep the toolkit **domain- and stack-agnostic**.
- Prefer portable [Agent Skills](https://agentskills.io/) layout (`SKILL.md` + optional `references/` / `templates/`).
- Do not bake project-specific business knowledge into global skills.
- Prefer small, reviewable changes with a clear problem statement.

## How to contribute

1. Fork and create a branch.
2. Make focused edits; update docs (`README.md` / `README_zh.md`) when behavior or install steps change.
3. If you add or vendor a third-party skill, update `THIRD_PARTY_NOTICES.md` and `product-manager/references/installed-sources.md`, and keep upstream license files.
4. Open a pull request describing **why** the change helps product workflows.

## Skill authoring notes

- `name` and `description` in `SKILL.md` frontmatter must stay accurate for auto-discovery.
- Keep `SKILL.md` operational; put long methods in `references/`.
- Templates should be testable and free of proprietary product content.

## License

By contributing, you agree that your contributions are licensed under the MIT License ([LICENSE](LICENSE)).
