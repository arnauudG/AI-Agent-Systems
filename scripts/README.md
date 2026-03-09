# Agent-kit scripts

Scripts for using this repo as a shared agent-kit in working projects.

Run these from the **working repo** that has the agent-kit attached at `.agent-kit/` (submodule or subtree). Or run from inside `.agent-kit/` with a target project path.

## sync-claude-skills.sh

Copies or symlinks selected skills from the agent-kit packages into your project's `.claude/skills/` so Claude Code can invoke them natively.

**Usage (from working repo root):**

```bash
.agent-kit/scripts/sync-claude-skills.sh
```

Creates `.claude/skills/` if missing and populates it from `.agent-kit/BUSINESS-ANALYSIS/skills/`, `.agent-kit/AWS/skills/`, etc. (or a subset you configure in the script). Edit the script to choose which packages/skills to sync.

## sync-cursor-rules.sh

Copies the agent-kit Cursor bootstrap rule into your project's `.cursor/rules/` so Cursor loads it without Remote Rules.

**Usage (from working repo root):**

```bash
.agent-kit/scripts/sync-cursor-rules.sh
```

Copies `templates/bootstrap/*.mdc` into `.cursor/rules/` (e.g. `agent-kit.mdc`). Idempotent; overwrites only the agent-kit rule files.

## Alternatives

- **No sync:** Reference the agent-kit directly. The bootstrap `CLAUDE.md` and `agent-kit.mdc` already point at `.agent-kit/` paths; both tools can read from there if the repo is present.
- **Remote Rules (Cursor):** Publish this repo to GitHub and add `templates/bootstrap/` as Remote Rules in Cursor Settings → Rules instead of copying into each project.
