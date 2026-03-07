# Testing and Quality Gates

## Required mindset
Testing is not a ceremonial checkbox.
It is evidence that the change behaves as intended and fails in understandable ways.

## Must evaluate
- unit test relevance
- integration test coverage
- infrastructure validation
- security scanning
- configuration validation
- deployment verification
- rollback verification when risk is high

## Quality gates
- lint and static analysis
- dependency/security checks
- build validation
- automated tests
- artifact generation
- deploy gating by environment risk

## The agent must challenge
- “tested manually only” for risky changes
- missing smoke tests
- missing post-deploy validation
- no rollback confidence