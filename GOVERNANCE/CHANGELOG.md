# Changelog

All notable changes to this repository should be recorded here.

## [Unreleased]

### Added
- `README.md` to document repository-governance artifacts
- `package-evolution-2026-03-07-modular-repository-structure.md` to log the modular repository structure decision
- tool-facing entry guidance in `CLAUDE/` and `.cursor/`
- `package-evolution-2026-03-07-add-tool-entry-layers.md` to log the tool entry-layer decision
- **Shared agent-kit consumption:** three consumption modes (standalone, local `.agent-kit/` submodule/subtree, native Cursor/Claude overlays); bootstrap `templates/bootstrap/CLAUDE.md` for Claude Code; `cursor/rules/agent-kit.mdc` for Cursor; `scripts/sync-claude-skills.sh` and `scripts/sync-cursor-rules.sh` for optional sync into project `.claude/skills/` and `.cursor/rules/`
- **`DOCTRINE/` shared doctrine folder:** extracted `TRANSLATION.md`, `routing-guide.md`, `loading-strategy.md`, `quick-start-prompts.md`, `repo-rules.md` into a single tool-agnostic source of truth
- **Claude Desktop support:** `templates/claude-desktop/project-instructions.md` (paste-ready) and `templates/claude-desktop/knowledge-bundle.md` (upload as knowledge)
- `package-evolution-2026-03-09-extract-shared-doctrine.md` to log the doctrine extraction decision

### Changed
- top-level docs now acknowledge `GOVERNANCE/` as a repository-governance layer
- naming and internal references were normalized across packages and shared docs
- top-level docs now acknowledge `CLAUDE/` and `.cursor/` as repository entry layers
- RESOURCES-level folders renamed to UPPERCASE: `governance/` → `GOVERNANCE/`, `shared/` → `SHARED/`, `svg/` → `SVG/`, `cursor/` → `.cursor/`, `claude/` → `CLAUDE/`; all path references in docs updated accordingly
- root `CLAUDE.md` now references `DOCTRINE/` instead of `CLAUDE/` folder
- `.cursor/rules/repo-doctrine.mdc` now references `DOCTRINE/` instead of `.cursor/` files
- `templates/bootstrap/CLAUDE.md` now references `.agent-kit/DOCTRINE/` paths
- bootstrap Cursor rule moved from `cursor/rules/agent-kit.mdc` to `templates/bootstrap/agent-kit.mdc`; updated to reference `DOCTRINE/` paths
- `scripts/sync-cursor-rules.sh` updated to source from `templates/bootstrap/`
- `README.md` updated for 4-tool support and `DOCTRINE/` folder

### Deprecated
-

### Removed
- **Antigravity support:** `.agents/` folder, `templates/bootstrap/antigravity-doctrine.md`, `scripts/sync-antigravity-rules.sh`; all references in README, scripts/README, DOCTRINE, GOVERNANCE/CLEANUP
- `CLAUDE/` folder (5 files) — replaced by `DOCTRINE/` (tool-agnostic)
- `.cursor/CURSOR.md`, `.cursor/TRANSLATION.md`, `.cursor/routing-guide.md`, `.cursor/loading_strategy.md`, `.cursor/quick-start-prompts.md`, `.cursor/repo-rules.md` — replaced by `DOCTRINE/`
- `cursor/` folder — bootstrap rule moved to `templates/bootstrap/agent-kit.mdc`

---

## [1.0.0] - YYYY-MM-DD

### Added
- Root orchestration layer
- Shared package
- AWS package
- DATA package
- COLLIBRA package
- BUSINESS-ANALYSIS package
- Cross-package playbooks

### Notes
- First stable multi-package version of the AI reasoning system
