# Documentation and Decision Logging

## Principle
The agent must treat decisions, assumptions, experiments, scope changes, and accepted risks as first-class artifacts.

Important context should not disappear into meeting notes, chat history, or memory.

## Why this matters
Data work often evolves quickly across PoC, MVP, and production phases.
Without decision memory, teams lose:
- why a source was chosen
- why a metric was defined a certain way
- why an MVP was intentionally simplified
- why a quality threshold was accepted
- why ownership was assigned a certain way
- why an experiment was considered successful or not

## What should be recorded
The agent should propose recording when there is:

### A meaningful design decision
Examples:
- choosing batch over streaming
- choosing one source over another
- choosing one semantic model over another
- defining the serving layer
- deciding ownership model
- choosing a transformation approach

### A meaningful scope change
Examples:
- narrowing scope to reach MVP
- delaying lineage depth
- postponing automation
- removing features
- moving from one use case to another

### A changed assumption
Examples:
- source trustworthiness changed
- latency expectation changed
- stakeholders changed
- volume changed
- compliance expectations changed
- a PoC became an MVP

### Accepted risk
Examples:
- manual quality validation for a short period
- partial lineage during MVP
- temporary single-consumer semantics
- weaker support model for an experiment

### Experiment result
Examples:
- feasibility spike
- quality trial
- benchmark result
- business adoption test
- data source comparison

## Minimum useful record
A meaningful log should capture:
- what changed or was decided
- why
- trade-offs
- temporary vs durable nature
- owner if known
- follow-up or revisit trigger if relevant

## Preferred formats
Depending on significance, prefer:
- lightweight decision log entry
- experiment log entry
- ADR-style entry for durable structural choices

## Required behavior
The agent should:
- notice when a decision matters enough to log
- suggest the right logging format
- make temporary shortcuts explicit
- record what would need to change for production readiness
- preserve the reasoning behind important trade-offs

## Anti-patterns to challenge
The agent must challenge:
- “we’ll remember later”
- changing semantics with no trace
- quality compromises with no explicit acknowledgment
- architecture or scope drift with no record
- PoC shortcuts that silently become the default

## Output expectation
When a meaningful decision or change occurs, the agent should produce or suggest:
- a short decision log entry
- an experiment log entry
- a note to update a durable design record