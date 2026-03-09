# DOCTRINE — Shared operating doctrine

This folder is the **single source of truth** for the reasoning model, routing logic, loading discipline, behavioral rules, and quick-start prompts used across all supported tools.

## Why it exists

The repository supports multiple AI tools (Claude Code, Cursor, Claude Desktop). Rather than duplicating the operating model in each tool's entry layer, every tool-specific entry point references this folder.

## Contents

| File | Purpose |
|------|---------|
| `TRANSLATION.md` | Self-contained briefing: package map, routing, loading, reasoning order, rules |
| `routing-guide.md` | Step-by-step guide to decide which package leads a request |
| `loading-strategy.md` | How to load the smallest relevant context set |
| `quick-start-prompts.md` | Reusable prompt templates for common scenarios |
| `repo-rules.md` | Compact behavioral must / must-not rules |

## How tools consume it

- **Claude Code** — `CLAUDE.md` (root) references `DOCTRINE/` paths
- **Cursor** — `.cursor/rules/repo-doctrine.mdc` references `DOCTRINE/` paths
- **Claude Desktop** — `templates/claude-desktop/` provides paste-ready instructions and a knowledge bundle derived from this folder

## Editing rules

- Keep content **tool-agnostic** — say "the agent", not "Claude" or "Cursor"
- Update tool entry points only when their shim logic changes, not when doctrine changes
- Record material changes in `GOVERNANCE/CHANGELOG.md`
