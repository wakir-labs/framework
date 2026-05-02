#!/usr/bin/env bash
# bootstrap.sh — initialize and push the framework skeleton.
#
# Run from a real host shell (not the agent sandbox) once you have:
#   - GitHub CLI authenticated for the wakir-labs org (`gh auth status`)
#   - Local git configured with name + email
#
# This script is idempotent up to the `gh repo create` step. After the
# first successful push, re-running will fail at `git init` (already a
# repo). That is expected.

set -euo pipefail

cd "$(dirname "$0")"

if [ -d .git ]; then
  echo "A .git directory already exists in $(pwd). Aborting." >&2
  exit 1
fi

git init -b main
git add -A
git commit -m "chore: initial commit"
gh repo create wakir-labs/framework \
  --public \
  --description "Wakir Framework — humans as first-class roles in AI-agent systems (Apache 2.0)" \
  --source=. \
  --remote=origin \
  --push
