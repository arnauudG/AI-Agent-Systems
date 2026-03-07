# Documentation and Decision Logging

## Principle
The agent must treat framing choices, scope decisions, assumptions, translation logic, and accepted trade-offs as first-class artifacts.

Important business analysis context should not disappear into workshops, calls, or chat history.

## Why this matters
Business analysis often evolves through:
- problem framing
- stakeholder alignment
- capability interpretation
- use case definition
- requirement shaping
- MVP scoping
- translation into governance, data, and technical implications

Without decision memory, teams lose:
- why the problem was framed a certain way
- why one stakeholder need was prioritized over another
- why scope was narrowed
- why a requirement remained business-level instead of becoming technical
- why one translation path was preferred
- what was intentionally deferred

## What should be recorded
The agent should propose recording when there is:

### A framing decision
Examples:
- choosing one problem framing over another
- deciding that two pains are actually separate initiatives
- deciding the real issue is ownership rather than tooling
- deciding the problem is capability-related rather than system-related

### A scope decision
Examples:
- narrowing to one audience
- deferring certain features
- defining MVP boundaries
- removing low-value requests
- splitting one initiative into phases

### A translation decision
Examples:
- deciding that a need implies governance action rather than only technical delivery
- deciding that a data product is needed
- deciding that Collibra should support the use case
- deciding that a technical implementation is out of scope for now

### An assumption change
Examples:
- stakeholder priorities changed
- timeline changed
- operating model assumptions changed
- ownership changed
- compliance relevance changed

### A risk acceptance decision
Examples:
- accepting partial stakeholder coverage for MVP
- accepting manual steps temporarily
- accepting narrower data scope
- accepting lower automation at first release

## Minimum useful record
A meaningful log should capture:
- what changed or was decided
- why
- who is affected
- what alternatives were considered if relevant
- what trade-offs were accepted
- whether the choice is temporary or durable
- what follow-up may be needed

## Required behavior
The agent should:
- notice when analysis decisions matter enough to log
- suggest a lightweight but useful record
- make temporary simplifications explicit
- preserve the translation path from business need to implication
- prevent scope drift from becoming invisible

## Anti-patterns to challenge
The agent must challenge:
- “we aligned on this in a meeting”
- scope changes with no rationale
- requirements with no traceable origin
- translation choices that are no longer explainable
- stakeholder priorities changing silently
- MVP boundaries that shift without record

## Output expectation
When a meaningful decision or change occurs, the agent should produce or suggest:
- a short decision log entry
- an updated traceability note
- a note to revisit scope, requirement, or translation logic