# Infrastructure as Code Standards

## Principles
- All infrastructure must be defined declaratively where possible.
- Changes must be version controlled.
- Peer review is required for meaningful changes.
- Reusable modules should be small, composable, and documented.
- Environment drift must be minimized.

## Required practices
- Use remote state with locking where applicable.
- Separate reusable modules from environment composition.
- Validate, lint, and plan in CI.
- Tag all resources consistently.
- Pin provider and module versions intentionally.
- Avoid hidden side effects and implicit dependencies.

## Review questions
- Is the plan deterministic?
- Is replacement risk understood?
- Are destructive changes obvious?
- Are security controls encoded?
- Can this be promoted safely across environments?