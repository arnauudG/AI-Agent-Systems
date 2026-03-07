# Documentation and Decision Logging

## Principle
The agent must treat decisions, assumptions, changes, and trade-offs as first-class engineering artifacts.

Important thinking should not disappear into chat history, memory, or vague recollection.
If a decision matters, it should be recorded.

## Why this exists
Good systems do not only need good implementation.
They also need traceability.

Decision and change logging helps teams:
- understand why something exists
- revisit assumptions later
- reduce repeated debates
- onboard new contributors faster
- distinguish intentional choices from accidents
- avoid losing context between PoC, MVP, and production stages

## What must be recorded
The agent should record or propose recording when there is:

### 1. A material design decision
Examples:
- choosing Lambda over ECS
- choosing EKS over serverless
- introducing event-driven architecture
- splitting a system across accounts
- selecting a database or storage pattern
- deciding on an auth pattern
- defining a deployment strategy

### 2. A meaningful architecture change
Examples:
- changing trust boundaries
- changing network exposure
- introducing a new dependency
- changing runtime topology
- changing data flow
- changing failure handling or recovery approach

### 3. A change in assumptions
Examples:
- expected traffic changed materially
- resilience requirements changed
- compliance constraints changed
- team maturity or operating model changed
- timeline or budget changed
- a PoC became an MVP
- an MVP is being hardened toward production

### 4. A risk acceptance decision
Examples:
- accepting single-AZ temporarily
- accepting manual rollback temporarily
- accepting limited monitoring for a PoC
- accepting weaker automation for a time-boxed experiment
- accepting a temporary shared component with known limitations

### 5. An experiment or validation outcome
Examples:
- benchmark result
- migration test result
- load test result
- failure test result
- proof that a pattern did or did not work
- evidence from a spike or trial

## Minimum logging expectations
For meaningful work, the log entry should capture at least:
- what changed or was decided
- why it changed or was decided
- what options were considered if relevant
- what trade-offs were accepted
- who made or owns the decision if known
- when it happened
- what follow-up may be needed

## Logging formats
The agent should prefer one of these formats depending on significance:

### Lightweight decision log entry
Use for:
- moderate design decisions
- scope changes
- implementation trade-offs
- non-controversial but important changes

### ADR
Use for:
- structural architecture choices
- long-lived decisions
- decisions with serious downstream consequences
- decisions likely to be revisited later

### Experiment log
Use for:
- spikes
- PoCs
- technical evaluations
- feasibility studies
- performance or migration trials

## Required behavior
The agent should:

### During design work
- detect when a decision is significant enough to log
- propose the most appropriate format
- summarize the decision in a reusable way

### During change review
- identify whether the change alters assumptions, boundaries, or operating model
- suggest updating the decision log if needed

### During PoC / MVP work
- explicitly capture what is intentionally simplified
- explicitly capture temporary risk acceptance
- explicitly capture what must change before production

### During production-oriented work
- require more rigorous traceability for major decisions
- make operational and security implications explicit

## Decision quality prompts
When writing or proposing a decision log, the agent should ask:

- What problem is this decision solving?
- What alternatives were available?
- Why is this choice appropriate now?
- What are the trade-offs?
- What risks are accepted?
- What would trigger revisiting this decision?
- Is this temporary or expected to persist?

## Anti-patterns to challenge
The agent must challenge:
- “we’ll remember why later”
- “it was discussed somewhere”
- architecture changes without recorded rationale
- risk acceptance without explicit acknowledgment
- undocumented temporary shortcuts that become permanent by accident
- PoC simplifications that are not flagged as temporary

## Escalation guidance
The agent should strongly recommend explicit logging when the change affects:
- production systems
- internet exposure
- IAM and trust boundaries
- encryption or secrets handling
- cross-account access
- disaster recovery or rollback
- shared platform capabilities
- high-cost architectural commitments

## Output expectation
When a decision or change should be logged, the agent should produce either:
1. a short proposed log entry
2. a suggestion to create or update an ADR
3. a suggestion to update a decision log or experiment log

The agent should not wait for perfect formality before capturing important context.
A concise, useful record is better than elegant silence.