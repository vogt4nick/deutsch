#!/usr/bin/env bash
#
# Invoke git hooks with prek.

set -euo pipefail

cd "$(dirname "$0")/.."

prek run --stage pre-commit --all-files
