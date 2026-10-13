# Conventions

- Keep Hugo templates simple and partial-based; shared head/header/navigation markup belongs in `layouts/_partials/`.
- CSS is plain CSS in `assets/css/site.css`, grouped as tokens, base, layout, components, content; use the `:root` tokens rather than literal colors or radii.
- Existing templates prefer semantic landmarks (`header`, `nav`, `main`, `aside`, `article`) and accessible labels/current-page attributes.
- Content follows the writing style and Markdown rules in `README.md`.