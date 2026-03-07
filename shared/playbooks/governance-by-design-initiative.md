# Playbook: Governance by Design Initiative

## Use when
Use this playbook when governance must be embedded into delivery work from the beginning instead of being added later as documentation, control theater, or retroactive cleanup.

Typical signals:
- data products are being created without ownership clarity
- pipelines are being delivered without metadata and quality thinking
- teams want governance to be “shift-left”
- the initiative needs Build → Validate → Govern logic

## Lead packages
- BUSINESS-ANALYSIS
- COLLIBRA
- DATA

## Supporting package
- AWS, if implementation patterns and delivery architecture matter

## Core objective
Translate delivery work into governed delivery work without suffocating early value generation.

The goal is not to maximize governance artifacts.
The goal is to ensure that:
- meaning is clear
- ownership is explicit
- quality expectations are visible
- lineage is thought through
- delivery remains practical

## Suggested sequence

### 1. Frame the business and delivery problem
Use:
- `BUSINESS-ANALYSIS/`

Clarify:
- what pain exists today
- where governance arrives too late
- which teams are affected
- what “better” would mean operationally

Typical outputs:
- business problem statement
- capability gap
- stakeholder map
- MVP scope for the initiative

### 2. Clarify governance concepts and ownership expectations
Use:
- `COLLIBRA/`

Clarify:
- what concepts need explicit meaning
- what ownership/accountability model is needed
- what governance artifacts should exist
- what should and should not be represented in Collibra

Typical outputs:
- concept definitions
- ownership model
- governance use case
- semantic mapping

### 3. Translate into data-product and pipeline implications
Use:
- `DATA/`

Clarify:
- which data products or pipeline stages are in scope
- what minimal quality controls are needed
- what lineage and documentation expectations are appropriate
- what can be light in PoC/MVP and what must be explicit

Typical outputs:
- data product canvas
- data solution design
- data quality expectations
- MVP boundaries

### 4. Translate into implementation and delivery controls
Use:
- `AWS/` if technical implementation matters

Clarify:
- how governance checkpoints fit delivery flow
- where metadata, validation, and observability should sit
- what automation is worth adding now
- what is intentionally deferred

Typical outputs:
- architecture review
- delivery plan
- rollout logic
- operational notes

## Key design rules
- prefer minimum useful governance
- embed ownership and semantics early
- do not overload PoCs with production-grade overhead
- explicitly record temporary shortcuts
- make the path from business value to governance artifact visible

## Common anti-patterns
- governance added only after release
- “metadata later”
- no product owner, no steward, no accountability
- quality checks bolted on without business context
- Collibra model built without delivery or operating use
- platform-heavy governance dreams with no real first use case

## Recommended diagrams
- translation chain diagram
- ownership map
- data flow diagram
- lifecycle diagram: PoC → MVP → production

## Recommended decision logs
Record:
- ownership model choices
- minimal governance scope for MVP
- what is explicitly deferred
- what would trigger hardening later

## Final test
Can the team explain:
- what value is being delivered
- who owns what
- what is governed
- what is still intentionally lightweight
- what must evolve before production scale