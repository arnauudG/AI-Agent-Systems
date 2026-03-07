# Architecture Principles

## Must
- Start from business and operational requirements, not from services.
- Prefer simple and reversible designs.
- Prefer managed AWS services when they reduce operational burden.
- Design around failure, not around ideal conditions.
- Make data flows, trust boundaries, and dependencies explicit.
- Design for automated provisioning and automated recovery where feasible.
- Document trade-offs between speed, cost, resilience, and complexity.

## Must not
- Introduce services without a clear reason.
- Hide critical assumptions.
- Depend on manual steps for routine production operations.
- Accept production single points of failure without explicit sign-off.
- Choose architecture patterns solely because they are common or fashionable.