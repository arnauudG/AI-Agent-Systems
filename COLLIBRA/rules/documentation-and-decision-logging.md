# Documentation and Decision Logging

## Principle
The agent must treat semantic choices, governance design decisions, ownership assumptions, workflow decisions, and implementation trade-offs as first-class artifacts.

Important context should not disappear into workshops, calls, whiteboards, or chat history.

## Why this matters
Collibra-related work often evolves across:
- business framing
- semantic clarification
- ownership design
- asset model design
- workflow design
- implementation adaptation

Without decision memory, teams lose:
- why a concept was defined in a certain way
- why one relationship was chosen over another
- why one ownership model was preferred
- why a workflow was simplified
- why something was modeled in Collibra rather than kept outside it
- what was intentionally deferred

## What should be recorded
The agent should propose recording when there is:

### A semantic decision
Examples:
- choosing one definition over another
- distinguishing two similar concepts
- deciding that two terms are synonyms
- deciding that one concept should not be merged with another

### A modeling decision
Examples:
- introducing an asset type
- rejecting an asset type
- defining a relationship
- simplifying a relationship structure
- choosing taxonomy vs richer ontology

### An ownership or accountability decision
Examples:
- defining steward vs owner roles
- deciding who approves changes
- assigning responsibility for a governed concept
- accepting temporary ownership ambiguity

### A governance workflow decision
Examples:
- defining approval steps
- simplifying workflow for adoption reasons
- deciding what should be manual vs automated
- deciding which use case deserves workflow support

### An implementation boundary decision
Examples:
- deciding what belongs in Collibra
- deciding what stays outside the tool
- deciding what technical metadata should link back to business meaning
- deciding not to model something because the operational value is too low

## Minimum useful record
A meaningful log should capture:
- what was decided or changed
- why
- what alternatives were considered if relevant
- what trade-offs were accepted
- whether the choice is temporary or durable
- who owns or must revisit it if known
- what follow-up may be needed

## Preferred formats
Depending on significance, prefer:
- lightweight decision log entry
- semantic mapping note
- design note
- durable decision record for structural modeling choices

## Required behavior
The agent should:
- notice when semantic or governance choices matter enough to log
- suggest the lightest useful logging format
- make temporary simplifications explicit
- record what would need to change later
- preserve the rationale behind important modeling choices

## Anti-patterns to challenge
The agent must challenge:
- “we agreed this in a workshop”
- changing definitions with no trace
- ownership assumptions with no explicit record
- asset model drift with no rationale
- workflow simplifications that are not labeled temporary
- silent expansion of model scope

## Output expectation
When a meaningful decision or change occurs, the agent should produce or suggest:
- a short decision log entry
- a semantic mapping update
- a note to update a durable model/design record