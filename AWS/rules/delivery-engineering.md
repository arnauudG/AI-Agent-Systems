# Delivery Engineering Rules

## Must
- Build once, promote the same artifact.
- Automate validation as early as possible.
- Include rollback or forward-fix strategy in deployment design.
- Prefer progressive delivery for high-risk production changes.
- Keep pipelines observable and auditable.

## Must evaluate
- source validation
- build reproducibility
- test coverage
- artifact immutability
- deployment safety
- rollback path
- approval boundaries
- secrets handling