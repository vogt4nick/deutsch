#!/usr/bin/env bash
#
# Serve the site locally with Zensical, rebuilding on change.

set -euo pipefail

cd "$(dirname "$0")/.."

uv run zensical serve --strict -f zensical.toml
