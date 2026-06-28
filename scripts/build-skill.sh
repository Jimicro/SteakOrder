#!/usr/bin/env bash
# build-skill.sh — package this repo as a claude.ai-upload-ready .skill file.
# Usage: bash scripts/build-skill.sh   (run from repo root)
#
# Produces dist/steakorder.skill, a zip with a single top-level `steakorder/` directory
# containing SKILL.md. steakorder is a prompt-only skill (no script runtime), so the
# bundle is just the one canonical SKILL.md. Plugin-only files (.claude-plugin/,
# commands/) are stripped from the .skill bundle — they are for Claude Code's
# plugin install, not the claude.ai upload.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

if ! git diff --quiet || ! git diff --cached --quiet; then
  echo "error: working tree is dirty; commit or stash before building" >&2
  exit 1
fi

mkdir -p dist
OUT="dist/steakorder.skill"
git archive --format=zip --prefix=steakorder/ --output="$OUT" HEAD

# The .skill bundle needs only SKILL.md. Strip the plugin/command scaffolding
# and repo metadata so claude.ai gets a single canonical skill file.
zip -d "$OUT" \
  "steakorder/.claude-plugin/*" \
  "steakorder/commands/*" \
  "steakorder/scripts/*" \
  "steakorder/.github/*" \
  "steakorder/.gitignore" \
  "steakorder/CHANGELOG.md" \
  > /dev/null 2>&1 || true

SKILL_MD_COUNT=$(unzip -l "$OUT" | grep -c "SKILL.md" || true)
if [ "$SKILL_MD_COUNT" -ne 1 ]; then
  echo "error: expected exactly one SKILL.md, found $SKILL_MD_COUNT" >&2
  exit 1
fi

COUNT=$(unzip -l "$OUT" | tail -1 | awk '{print $2}')
SIZE=$(du -h "$OUT" | cut -f1)
echo "built $OUT ($COUNT files, $SIZE)"
echo "upload via the claude.ai skill UI: Settings -> Capabilities -> Skills"
