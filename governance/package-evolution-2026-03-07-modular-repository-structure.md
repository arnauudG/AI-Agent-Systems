# Package Evolution ADR: Establish modular package structure and repository governance

## Status
Accepted

## Date
2026-03-07

## Context
The repository evolved from a small set of top-level guidance files into a broader AI reasoning system with specialist packages, shared cross-cutting guidance, and repository-governance needs.

Without an explicit structural decision, several risks appear:
- duplicated guidance across domains
- unclear package boundaries
- weak traceability between repository evolution and repo governance
- inconsistent naming and internal references
- no dedicated place to manage contribution, versioning, and changelog discipline

## Decision
Adopt a modular repository structure with:
- specialist domain packages: `BUSINESS-ANALYSIS/`, `COLLIBRA/`, `DATA/`, `AWS/`
- a `shared/` layer for cross-cutting rules, templates, and playbooks
- a `governance/` layer for repository-level contribution, review, versioning, changelog, and package-evolution artifacts

Also normalize file naming and internal references so documented paths resolve consistently across the repository.

## Options considered
### Option 1
- Description: Keep most guidance at the root with only minimal package separation.
- Pros:
  - lower short-term organization effort
  - fewer directories to navigate initially
- Cons:
  - weaker domain separation
  - more duplication pressure
  - harder to scale specialist logic cleanly

### Option 2
- Description: Use specialist packages plus `shared/`, but keep repo-governance artifacts mixed into root docs.
- Pros:
  - preserves package modularity
  - avoids introducing another folder
- Cons:
  - repo evolution logic remains implicit
  - contribution and versioning discipline stay harder to find
  - repository governance remains coupled to user-facing package docs

## Rationale
The chosen structure creates a clearer operating model:
- domain logic stays in domain packages
- genuinely cross-cutting guidance stays in `shared/`
- repository evolution concerns are handled explicitly in `governance/`

This is the smallest structure that supports growth without letting duplication and structural drift accumulate invisibly.

## Impact
- affected packages:
  - root orchestration
  - `shared/`
  - `BUSINESS-ANALYSIS/`
  - `COLLIBRA/`
  - `DATA/`
  - `AWS/`
  - `governance/`
- backward compatibility impact:
  - low for content usage, but documented paths and naming are now more explicit
- maintenance implications:
  - lower duplication risk
  - clearer ownership of cross-cutting versus repo-governance artifacts
- loading/orchestration implications:
  - root docs can now distinguish specialist packages from repository-governance artifacts

## Trade-offs
- more folders increase initial navigation overhead
- explicit governance files add some ceremony, but make repo evolution traceable and reviewable

## Follow-up actions
- [ ] Keep `CHANGELOG.md` aligned with meaningful repo changes
- [ ] Use `review-checklist.md` for future repo-level changes
- [ ] Revisit versioning semantics when the next materially breaking structural change occurs
