# Package Evolution ADR: Add tool-facing entry layers

## Status
Accepted

## Date
2026-03-07

## Context
The repository already had strong package content and root orchestration, but it lacked dedicated tool-facing entry layers for client-specific usage patterns.

That created a gap between:
- repository structure
- package routing logic
- context-loading discipline
- practical prompt starters for Claude users

Without dedicated entry layers, client usage risked becoming:
- too context-heavy
- inconsistent in routing
- dependent on ad hoc prompt phrasing
- weaker at preserving stage-aware, multi-package orchestration

## Decision
Add tool-facing folders as repository entry layers:
- `CLAUDE/`
- `../CLAUDE/CLAUDE.md` for Claude-specific orchestration context
- `../CLAUDE/routing-guide.md` for package leadership decisions
- `../CLAUDE/loading_strategy.md` for minimal context-loading discipline
- `../CLAUDE/quick-start-prompts.md` for reusable starting prompts
- `.cursor/`
- `../.cursor/CURSOR.md` for Cursor-specific orchestration context
- `../.cursor/routing-guide.md` for package leadership decisions
- `../.cursor/loading_strategy.md` for minimal context-loading discipline
- `../.cursor/quick-start-prompts.md` for reusable starting prompts
- `../.cursor/repo-rules.md` for compact repository behavior rules

These layers are interfaces to the repository, not new specialist domain packages.

## Options considered
### Option 1
- Description: Keep Claude guidance implicit in root docs only.
- Pros:
  - fewer files
  - no new top-level folder
- Cons:
  - weaker tool-specific usability
  - routing and loading logic stay more scattered
  - less practical reuse for prompt starters

### Option 2
- Description: Put Claude guidance inside `SHARED/`.
- Pros:
  - avoids another top-level layer
  - keeps generic reusable guidance centralized
- Cons:
  - mixes repository interface guidance with domain-agnostic reasoning doctrine
  - makes `SHARED/` less conceptually clean

## Rationale
The tool-facing entry layers improve usability without altering the domain package boundaries.

They create focused interfaces for:
- starting work quickly
- loading less context by default
- routing requests to the right package
- preserving traceability across packages

That is a meaningful structural improvement, but not a new reasoning domain.

## Impact
- affected packages:
  - root documentation
  - `CLAUDE/`
  - `.cursor/`
  - `GOVERNANCE/`
- backward compatibility impact:
  - low
- maintenance implications:
  - another entry layer to keep aligned with root orchestration and package structure
- loading/orchestration implications:
  - lower prompt friction for tool-specific usage
  - clearer routing and loading behavior

## Trade-offs
- introduces another top-level folder
- requires discipline to avoid duplicating package or root doctrine inside tool-facing layers

## Follow-up actions
- [ ] Keep `CLAUDE/` aligned with root routing and package structure
- [ ] Keep `.cursor/` aligned with root routing and package structure
- [ ] Avoid turning tool-facing entry layers into duplicates of package READMEs
- [ ] Update tool-facing entry layers when package leadership logic changes materially
