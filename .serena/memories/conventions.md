# Conventions

- Keep Hugo templates simple and partial-based; shared head/header/navigation markup belongs in `layouts/_partials/`.
- CSS is plain CSS in `assets/css/`; existing files use straightforward selectors and minimal abstraction.
- Existing templates prefer semantic landmarks (`header`, `nav`, `main`, `aside`, `article`) and accessible labels/current-page attributes.
- Avoid broad refactors for styling tasks; layer new CSS through the head partial when adding a separate stylesheet.