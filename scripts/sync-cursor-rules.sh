#!/usr/bin/env bash
# Copy agent-kit Cursor rules into project .cursor/rules/ so Cursor loads them locally.
# Run from working repo root (parent of .agent-kit/) or from .agent-kit/ with AGENT_KIT_ROOT set.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
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

SRC="${AGENT_KIT}/templates/bootstrap"
TARGET="${PROJECT_ROOT}/.cursor/rules"

if [[ ! -d "$SRC" ]]; then
  echo "No templates/bootstrap in agent-kit at $SRC" >&2
  exit 1
fi

mkdir -p "$TARGET"
for f in "$SRC"/*.mdc; do
  [[ -e "$f" ]] || continue
  cp "$f" "$TARGET/"
  echo "Copied $(basename "$f") to $TARGET"
done

echo "Cursor rules synced to $TARGET"
