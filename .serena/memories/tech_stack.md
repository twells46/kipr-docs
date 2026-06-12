# Tech Stack

- Hugo static site, config in `hugo.toml`.
- Local Hugo version observed: `hugo v0.163.0+extended+withdeploy linux/amd64`.
- CSS assets live in `assets/css/` and are loaded via Hugo Pipes in `layouts/_partials/head.html` using `resources.Get`, `resources.Minify`, and `resources.Fingerprint`.
- No Node/package manifest observed; use Hugo directly for builds.