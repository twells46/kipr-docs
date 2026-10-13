FROM debian:trixie-slim AS dev

# The Hugo version the site is built against.
ENV HUGO_VERSION=0.164.0

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    bubblewrap ca-certificates curl fd-find fish fzf git jq openssh-client ripgrep wget \
    # Justfile recipes
    just \
    # WebP/JPEG conversion of doc screenshots
    imagemagick \
    # Signed commits (VS Code forwards the host GPG agent)
    gnupg \
    # Only for the Codex CLI; the site itself needs no Node
    nodejs npm \
  && ln -s "$(command -v fdfind)" /usr/local/bin/fd \
  && rm -rf /var/lib/apt/lists/*

RUN deb="hugo_extended_${HUGO_VERSION}_linux-$(dpkg --print-architecture).deb" \
  && url="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}" \
  && cd /tmp \
  && curl -fsSLO "$url/$deb" \
  && curl -fsSL "$url/hugo_${HUGO_VERSION}_checksums.txt" | grep " $deb\$" | sha256sum -c - \
  && dpkg -i "$deb" \
  && rm "$deb" \
  && hugo version

RUN npm install -g @openai/codex \
  && npm cache clean --force \
  && codex --version

RUN groupadd -g 1000 code \
  && useradd -m -u 1000 -g 1000 -s /usr/bin/fish code

USER code
# Agent state lives in named volumes; a new volume inherits this ownership.
# CLAUDE_CONFIG_DIR also moves ~/.claude.json inside the volume.
ENV CLAUDE_CONFIG_DIR=/home/code/.claude \
    CODEX_HOME=/home/code/.codex \
    PATH=/home/code/.local/bin:$PATH
RUN mkdir -p "$CLAUDE_CONFIG_DIR" "$CODEX_HOME" \
  && curl -fsSL https://claude.ai/install.sh | bash \
  && claude --version
