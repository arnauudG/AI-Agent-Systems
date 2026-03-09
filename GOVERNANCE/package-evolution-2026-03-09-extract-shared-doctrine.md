# Package Evolution ADR: Extract shared doctrine for multi-tool support

## Status
Accepted

## Date
2026-03-09

## Context
The repository supported two tools (Claude Code via `CLAUDE/`, Cursor via `.cursor/`) with ~95% identical content duplicated across both entry layers. Adding Antigravity and Claude Desktop would have created 4x duplication of routing logic, loading strategy, reasoning order, behavioral rules, and prompt templates.

This violated the principle of avoiding duplicated package logic and created a maintenance burden: any doctrine change required updating multiple files in parallel.

## Decision
Extract shared operating doctrine into a single tool-agnostic folder (`DOCTRINE/`) and reduce tool-specific entry points to thin shims that reference it.

### New structure
- `DOCTRINE/` — single source of truth (TRANSLATION.md, routing-guide.md, loading-strategy.md, quick-start-prompts.md, repo-rules.md)
- `CLAUDE.md` (root) — thin Claude Code entry point referencing `DOCTRINE/`
- `.cursor/rules/repo-doctrine.mdc` — thin Cursor entry point referencing `DOCTRINE/`
- `.agents/rules/repo-doctrine.md` — new Antigravity entry point referencing `DOCTRINE/`
- `templates/claude-desktop/` — new Claude Desktop project instructions and knowledge bundle
- `templates/bootstrap/` — updated bootstrap files for agent-kit mode (Claude Code, Cursor, Antigravity)

### Removed
- `CLAUDE/` folder (5 files)
- `.cursor/CURSOR.md`, `.cursor/TRANSLATION.md`, `.cursor/routing-guide.md`, `.cursor/loading_strategy.md`, `.cursor/quick-start-prompts.md`, `.cursor/repo-rules.md`
- `cursor/` folder (bootstrap rule moved to `templates/bootstrap/`)

## Options considered
### Option 1: Keep duplicated tool layers
- Pros: each tool has fully self-contained files; no cross-referencing needed
- Cons: 4x duplication; every doctrine change must be applied in 4 places; high drift risk

### Option 2: Extract shared doctrine into DOCTRINE/ (chosen)
- Pros: single source of truth; thin tool shims; easy to add new tools; no drift
- Cons: tool entry points reference another folder instead of being self-contained

### Option 3: Put shared doctrine in SHARED/
- Pros: reuses existing folder
- Cons: mixes repository interface guidance with domain-agnostic reasoning doctrine; makes SHARED/ less conceptually clean

## Rationale
Option 2 eliminates duplication while keeping tool entry points simple and focused. Each tool's shim file provides just enough inline context for the tool to start, then references DOCTRINE/ for the full operating model. This makes it trivial to add new tools in the future.

## Impact
- affected areas:
  - root documentation
  - all tool entry points
  - bootstrap templates
  - sync scripts
  - governance
- backward compatibility impact:
  - medium — existing Cursor `.cursor/` and Claude Code `CLAUDE/` references must be updated
- maintenance implications:
  - lower — doctrine changes happen in one place instead of two+
  - adding a new tool requires only a thin shim file
- loading/orchestration implications:
  - unchanged — agents still load the same content, just from `DOCTRINE/` instead of tool-specific folders

## Trade-offs
- tool entry points are no longer fully self-contained (they reference `DOCTRINE/`)
- agents need to follow one level of indirection to reach the full doctrine
- `DOCTRINE/` is a new top-level folder in an already folder-rich repo

## Follow-up actions
- [x] Create `DOCTRINE/` with all shared files
- [x] Update all tool entry points to reference `DOCTRINE/`
- [x] Create Antigravity entry point and bootstrap
- [x] Create Claude Desktop templates
- [x] Update bootstrap templates for agent-kit mode
- [x] Update sync scripts
- [x] Delete replaced files
- [x] Update README.md and CHANGELOG.md
