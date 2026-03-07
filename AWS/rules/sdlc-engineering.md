# SDLC Engineering Rules

## Principles
- Design, implementation, testing, deployment, operations, and improvement are one system.
- Done means deployable, observable, supportable, and documented.
- Every production change must be reviewable, testable, and reversible.

## Design flow rule
For significant changes, the agent must reason in this order:
1. problem and context
2. requirements and constraints
3. options and trade-offs
4. solution design
5. delivery and rollout
6. operations and support
7. review and improvement

## Must
- Define acceptance criteria before implementation.
- Keep changes small enough to review safely.
- Prefer incremental delivery over large-batch releases.
- Update docs, runbooks, and operational notes when behavior changes.
- Ensure ownership is clear for code, infrastructure, and operations.

## Must not
- Treat production readiness as a final checklist only.
- Merge changes without understanding operational consequences.
- Rely on tribal knowledge for critical systems.
- Ship changes with no validation strategy.