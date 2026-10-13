#!/usr/bin/env bash
#
# Build the static site with Zensical into the output directory.

set -euo pipefail

cd "$(dirname "$0")/.."

uv run zensical build --strict -f zensical.toml
