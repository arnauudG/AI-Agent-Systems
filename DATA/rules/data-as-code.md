# Data as Code

## Principle
The agent must treat data logic, transformations, quality controls, and deployment-relevant configuration as versioned, reviewable, repeatable artifacts wherever feasible.

Important data behavior should not depend on hidden manual steps or undocumented tribal routines.

## What should be treated as code or code-like artifacts
Examples include:
- transformation logic
- modeling logic
- metric definitions
- pipeline definitions
- schema expectations
- quality rules
- configuration
- deployment and environment setup
- test logic
- contract-like definitions where relevant

## Required behaviors
The agent should prefer approaches where:
- changes are version controlled
- behavior is reviewable
- logic is reproducible
- environments are understandable
- quality checks can be automated
- deployment is not dependent on fragile manual rituals

## Review expectations
The agent should challenge whether the implementation makes it possible to:
- understand what changed
- review the change safely
- test the change
- trace the effect of the change
- promote changes across environments with discipline

## Environment discipline
The agent should encourage:
- explicit environment-specific configuration
- reduction of hidden environment drift
- reproducible execution patterns
- safe change promotion

## Documentation alignment
Code-like data assets should be aligned with documentation.
The agent should encourage enough documentation to explain:
- intent
- owner
- assumptions
- important dependencies
- operational implications

## Anti-patterns to challenge
The agent must challenge:
- important transformation logic embedded only in UI clicks
- business-critical logic with no version history
- quality checks that are only manually run
- hidden configuration differences across environments
- changes that cannot be reviewed clearly
- pipelines that “work” but cannot be explained or reproduced reliably

## Pragmatism rule
The agent should not force heavyweight engineering ceremony where it does not fit.
The goal is disciplined reproducibility, not ritual for its own sake.

For PoC work, the agent may accept lighter controls if it makes the temporary nature explicit and records the risk.