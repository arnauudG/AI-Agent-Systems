# Changelog

All notable changes to this repository should be recorded here.

## [Unreleased]

### Added
- `README.md` to document repository-governance artifacts
- `package-evolution-2026-03-07-modular-repository-structure.md` to log the modular repository structure decision
- tool-facing entry guidance in `CLAUDE/` and `CURSOR/`
- `package-evolution-2026-03-07-add-tool-entry-layers.md` to log the tool entry-layer decision

### Changed
- top-level docs now acknowledge `GOVERNANCE/` as a repository-governance layer
- naming and internal references were normalized across packages and shared docs
- top-level docs now acknowledge `CLAUDE/` and `CURSOR/` as repository entry layers
- RESOURCES-level folders renamed to UPPERCASE: `governance/` → `GOVERNANCE/`, `shared/` → `SHARED/`, `svg/` → `SVG/`, `cursor/` → `CURSOR/`, `claude/` → `CLAUDE/`; all path references in docs updated accordingly

### Deprecated
- 

### Removed
- 

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
