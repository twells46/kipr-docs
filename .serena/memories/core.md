# Core

- Small Hugo docs site rooted at `hugo.toml`; see `README.md` for layout, commands, and writing style.
- Content lives under `content/` as page bundles; only images a page references belong there. Sources and unused images live in `image-src/`.
- `layouts/baseof.html` renders the shared shell (header, sidebar, breadcrumbs, title, description); `layouts/list.html` and `layouts/page.html` only define the `main` block.
- Render hooks in `layouts/_markup/` fail the build on broken internal links, missing images, and empty alt text.
- Read `mem:tech_stack` for build tooling and asset pipeline details.
- Read `mem:conventions` for template/CSS style conventions.
- Read `mem:suggested_commands` and `mem:task_completion` for local verification commands.
