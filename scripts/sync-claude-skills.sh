#!/usr/bin/env bash
# Sync skills from agent-kit packages into project .claude/skills/ for Claude Code.
# Run from working repo root (parent of .agent-kit/) or from .agent-kit/ with AGENT_KIT_ROOT set.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# If run from working repo root, .agent-kit is sibling of .cursor; if run from .agent-kit, SCRIPT_DIR is inside it.
if [[ -d "$SCRIPT_DIR/../.agent-kit" ]]; then
  AGENT_KIT="${SCRIPT_DIR}/../.agent-kit"
  PROJECT_ROOT="${SCRIPT_DIR}/.."
elif [[ -n "$AGENT_KIT_ROOT" ]]; then
  AGENT_KIT="${AGENT_KIT_ROOT}"
  PROJECT_ROOT="$(cd "$AGENT_KIT/.." && pwd)"
else
  AGENT_KIT="${SCRIPT_DIR}/.."
  PROJECT_ROOT="$(cd "$AGENT_KIT/.." && pwd)"
fi

TARGET="${PROJECT_ROOT}/.claude/skills"
mkdir -p "$TARGET"

# Packages to sync skills from (edit to add/remove)
PACKAGES=(BUSINESS-ANALYSIS COLLIBRA DATA AWS SVG)

for pkg in "${PACKAGES[@]}"; do
  SRC="${AGENT_KIT}/${pkg}/skills"
  if [[ ! -d "$SRC" ]]; then continue; fi
  for f in "$SRC"/*.skill.md "$SRC"/*.md; do
    [[ -e "$f" ]] || continue
    name="$(basename "$f")"
    # Prefer flat layout with package prefix so names don't clash
    dest="$TARGET/${pkg,,}-${name}"
    if [[ -L "$dest" ]] || [[ -f "$dest" ]]; then
      rm -f "$dest"
    fi
    cp "$f" "$dest"
  done
done

echo "Synced skills from agent-kit into $TARGET"
