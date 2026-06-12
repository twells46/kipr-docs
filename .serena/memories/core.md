# Core

- Small Hugo docs site rooted at `hugo.toml`.
- Content lives under `content/`; docs pages are under `content/docs/`.
- Layouts are plain Hugo templates under `layouts/`; `layouts/baseof.html` includes `layouts/_partials/head.html` and `layouts/_partials/site-header.html`.
- Documentation pages/sections use `layouts/page.html` and `layouts/section.html`, both wrapping content in `.docs-shell` with sidebar docs nav from `layouts/_partials/docs-nav.html`.
- Read `mem:tech_stack` for build tooling and asset pipeline details.
- Read `mem:conventions` for template/CSS style conventions.
- Read `mem:suggested_commands` and `mem:task_completion` for local verification commands.