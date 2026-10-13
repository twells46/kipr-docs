# Dev container

A self-contained environment for building and previewing the site. It needs nothing from the host except the workspace.

## What's in the image

The image is the `dev` stage of the repo-root `Dockerfile`, based on `debian:trixie-slim`.

| Tool | Why |
|---|---|
| Hugo extended (pinned by `HUGO_VERSION`) | Builds the site |
| `just` | Runs the `Justfile` recipes |
| ImageMagick | Converts doc screenshots to WebP/JPEG |
| `gnupg` | Signed commits |
| Node.js, npm | Only there to install the Codex CLI |
| Claude Code, Codex | Agent CLIs |
| `fish`, `fd`, `fzf`, `rg`, `jq`, `git` | General shell tools |

The container user is `code` (UID 1000, home `/home/code`, shell fish).

## Opening it

- VS Code: run "Dev Containers: Reopen in Container".
- CLI: `devcontainer up --workspace-folder .`, then `devcontainer exec --workspace-folder . fish`.

## Building the site

```sh
just build   # writes public/
just serve   # live preview on http://localhost:1313
```

## Building the image on its own

```sh
docker build --target dev -t kipr-docs-dev .
```

## When to rebuild

Rebuild the container after any change to `Dockerfile` or `devcontainer.json`. To change the Hugo version, edit `HUGO_VERSION` in the `Dockerfile` and rebuild.

## Agent CLIs

Agent logins live in two named Docker volumes, `claude-config` and `codex-config`, shared by every dev container on the machine. Log in once per machine:

```sh
claude         # follow the login prompt
codex login
```

Smoke tests:

```sh
claude --version
codex --version
codex sandbox -- true   # exits 0 when the sandbox works
```

## Caveats

- The container runs with `seccomp=unconfined` and `systempaths=unconfined` so the agents' bubblewrap sandbox works. This turns off Docker's syscall filter and its masking of `/proc` and `/sys` paths for this container.
- Every dev container on the machine shares the agent volumes live, so sessions running in two containers at once write to the same files.
- Host-level agent config (user settings, skills, plugins, memories) is not shared with the container.
- Signed commits rely on VS Code forwarding the host GPG agent. Signing from a container started with the plain `devcontainer` CLI needs the key set up by hand.
- `just serve` binds to localhost inside the container. VS Code forwards port 1313; under plain `docker run` add `--bind 0.0.0.0` and publish the port.
