#!/usr/bin/env bash
# Local preview for dikshagup.github.io
#
#   ./serve.sh          live-reloading preview on http://localhost:1313
#   ./serve.sh drafts   ...including drafts and future-dated content
#   ./serve.sh build    one-off production build into ./public
#
# Downloads a project-local Hugo into .tools/ (gitignored) so local renders match CI.
set -euo pipefail

# Keep in sync with HUGO_VERSION in .github/workflows/hugo.yaml
HUGO_VERSION="0.111.3"

cd "$(dirname "$0")"
HUGO="./.tools/hugo"

# Hugo Modules pulls the theme with Go, which Homebrew installs outside the default PATH.
export PATH="/opt/homebrew/bin:/usr/local/go/bin:$PATH"
if ! command -v go >/dev/null 2>&1; then
  echo "error: Go is required for Hugo Modules. Install it with: brew install go" >&2
  exit 1
fi

if [[ ! -x "$HUGO" ]] || ! "$HUGO" version | grep -q "v${HUGO_VERSION}"; then
  case "$(uname -s)" in
    Darwin) asset="hugo_extended_${HUGO_VERSION}_darwin-universal.tar.gz" ;;
    Linux)  asset="hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" ;;
    *) echo "error: unsupported platform $(uname -s); install Hugo extended v${HUGO_VERSION} yourself" >&2; exit 1 ;;
  esac
  echo "Fetching Hugo extended v${HUGO_VERSION} into .tools/ ..."
  mkdir -p .tools
  curl -fsSL -o .tools/hugo.tar.gz \
    "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${asset}"
  tar xzf .tools/hugo.tar.gz -C .tools hugo
  rm -f .tools/hugo.tar.gz
  chmod +x "$HUGO"
fi

case "${1:-serve}" in
  serve)  exec "$HUGO" server --disableFastRender ;;
  drafts) exec "$HUGO" server --disableFastRender --buildDrafts --buildFuture ;;
  # Build into its own resource and cache dirs so it can run while `./serve.sh`
  # is live -- sharing them makes the running server fail with
  # "Failed to publish Resource: file does not exist".
  build)  exec env HUGO_RESOURCEDIR=".build/resources" \
            "$HUGO" --gc --minify --cacheDir "$PWD/.build/cache" ;;
  *) echo "usage: $0 [serve|drafts|build]" >&2; exit 1 ;;
esac
