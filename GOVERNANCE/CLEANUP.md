# Optional cleanup — potentially redundant files

Use this only if you want to trim the repo. Nothing here is broken; these are optional removals.

## Case-sensitive systems (e.g. Linux)

If the repo is used on a case-sensitive filesystem, you may have both lowercase and UPPERCASE folders from renames (e.g. `governance/` and `GOVERNANCE/`). Prefer the UPPERCASE canonical names (GOVERNANCE, SHARED, SVG); remove the lowercase duplicates and fix any remaining path references. On macOS (case-insensitive), there is usually only one directory.

## Keep

- **`templates/claude-desktop/`** — For Claude Desktop (project instructions + knowledge bundle). Keep if anyone uses Claude Desktop.
- **`DOCTRINE/`** — Single source of truth; referenced by root CLAUDE.md and .cursor/rules.
- **`templates/bootstrap/CLAUDE.md`** and **`templates/bootstrap/agent-kit.mdc`** — For projects that attach this repo as `.agent-kit/`. Keep.
