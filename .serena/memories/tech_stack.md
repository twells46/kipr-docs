# Tech Stack

- Hugo static site, config in `hugo.toml`; the Hugo version is pinned in `Dockerfile`.
- `assets/css/site.css` and `assets/css/syntax.css` are concatenated, minified, and fingerprinted via Hugo Pipes in `layouts/_partials/head.html`.
- No Node/package manifest; use Hugo directly (via `just`) for builds.
