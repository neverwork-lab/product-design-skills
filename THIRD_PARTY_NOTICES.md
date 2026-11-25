# Third-party notices

This repository’s original content (orchestrator skill, templates, documentation)
is licensed under the MIT License — see [LICENSE](LICENSE).

## Status

This release ships first-party skills: `product-manager`, `business-rule-design`,
`product-interaction-design`, and `product-requirements-review` (all MIT, this repo).

It does **not** vendor third-party skill trees. Optional third-party names in
`product-manager/references/installed-sources.md` must be installed separately.

Upstream candidates listed in the README (for example mattpocock/skills,
phuryn/pm-skills, product-on-purpose/pm-skills) remain optional dependencies.
If you install them separately, you must comply with **their** licenses and
preserve their copyright notices.

## When vendoring third-party skills

If this project later copies or submodules third-party skills:

1. Record each package in `product-manager/references/installed-sources.md`
   (repo, commit/tag, license).
2. Keep each upstream `LICENSE` / copyright file next to the vendored skill
   (or link clearly from this document).
3. Do not relicense third-party code as MIT unless the upstream license allows
   and attribution requirements are still met.

## Intentionally not included

Some upstream PM skill collections use non-commercial or stack-coupled licenses
(e.g. CC BY-NC-SA). Those are skipped for this MIT-licensed distribution.
See `product-manager/references/installed-sources.md` for skipped sources and reasons.
