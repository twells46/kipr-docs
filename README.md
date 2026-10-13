# KIPR Docs

Documentation and troubleshooting guides for the KIPR Wombat controller, built with [Hugo](https://gohugo.io/).

## Working on the site

The dev container has everything installed.

- `just serve`: preview at <http://localhost:1313> with live reload.
- `just check`: build in memory and fail on warnings, broken internal links, missing images, or missing alt text. Run this before committing.
- `just build`: build the site into `public/`.

## Layout

- `content/`: pages. Each page is a directory with an `index.md` and the images it uses.
- `layouts/`: templates, partials, shortcodes, and Markdown render hooks.
- `assets/`: CSS and JavaScript. `assets/css/syntax.css` is generated with `hugo gen chromastyles --style=github`.
- `image-src/`: source and unused images, mirroring `content/`. Nothing here is published.
- `TODO.md`: pages still to write.

Anything inside a page's directory is published, so keep only the images the page uses there.

## Releasing a new WombatOS version

Change `wombatosVersion` in `hugo.toml`. The version number and image download link on every page come from it.

## Writing style

- **Titles and headings**: sentence case. Debugging pages are titled after the symptom ("Controller won't turn on").
- **Descriptions**: one full sentence ending in a period.
- **Product name**: "Wombat" on first use on a page, then "the controller".
- **UI paths**: italic with ">" between steps, like *Settings > Hide UI*.
- **Buttons**: bold, like **Backup**.
- **Verbs**: "tap" on the controller's touchscreen, "click" on a computer.
- **Voice**: "you" for the reader, "KIPR recommends" for advice. No "I".
- **Alt text**: describe what the image shows. The build fails without it.
- **Links**: link to other pages by path (`/docs/backup_programs/`). Link to kipr.org only for things this site doesn't cover.

Debugging pages follow the same structure: flowchart, a "Diagnosing" section, one section per cause with its fix, and the support callout where the fix needs KIPR.

## Markdown

- One sentence per line.
- `1.` for every item in a numbered list, `-` for bullets.
- Callouts use GitHub syntax (`> [!TIP]`, `NOTE`, `IMPORTANT`, `WARNING`, `CAUTION`).
- Shortcodes: `{{</* recommended_wombatos_version */>}}`, `{{</* wombatos_image_link */>}}`, `{{</* support_email_callout */>}}`.
