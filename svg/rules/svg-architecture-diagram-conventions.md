# SVG Architecture Diagram Conventions

## Goal
Represent architecture and platform concepts clearly.

## Rules
- Distinguish systems, trust boundaries, accounts, roles, storage, and flows visually.
- Use containers to represent ownership or hosting boundaries.
- Use arrows only for meaningful flow or permission direction.
- Label access relationships explicitly when they matter.
- Keep infrastructure boundaries visually obvious.
- Avoid crossing lines when possible.
- Use a legend when color or line style carries meaning.

## Specific conventions
- Ownership boundary should be visually distinct from service blocks.
- IAM roles, policies, and secrets should not look identical.
- Cross-account access should be explicitly labeled.
- Security controls should be visible but not clutter the core flow.
