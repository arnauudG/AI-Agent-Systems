# Skill: Update Data Decision Log

## Purpose
Capture important data-project decisions, scope changes, assumptions, experiment outcomes, and accepted risks in a concise, reusable form.

This skill exists to prevent important context from evaporating into chat history, meetings, and human memory.

## Use when
Use this skill when:
- a meaningful data design choice is made
- a source is selected or rejected
- a data product scope is narrowed or expanded
- an MVP simplification is intentionally accepted
- a quality threshold is chosen
- an ownership model is defined or changed
- an experiment or spike produces a meaningful result
- a PoC becomes an MVP
- an MVP begins hardening toward production

## Do not use when
Do not create noise for trivial changes such as:
- wording tweaks
- minor formatting edits
- obvious implementation details with no real trade-off
- changes that do not affect meaning, scope, risk, quality, or operations

## Inputs
The skill works best with:
- what changed or was decided
- why it changed or was decided
- the context / problem
- alternatives considered if relevant
- trade-offs accepted
- known risks
- owner if known
- temporary vs durable nature
- revisit trigger if relevant

## Decision significance guide

### Lightweight decision entry
Use when:
- the decision matters
- it should be traceable
- but it is not a major structural turning point

Examples:
- selecting one source over another for the MVP
- accepting batch refresh instead of near-real-time
- narrowing the first release to one consumer group
- accepting partial lineage temporarily

### Structural decision entry
Use when:
- the decision affects architecture in a durable way
- the choice affects multiple teams or products
- the decision has long-lived consequences for ownership, semantics, or operations

Examples:
- choosing a serving layer
- choosing the primary semantic model
- deciding central vs domain-oriented ownership
- deciding the main quality control strategy
- defining the long-term operating model of a reusable data product

### Experiment-driven decision entry
Use when:
- the result comes from a spike, benchmark, PoC, or validation exercise
- evidence matters more than abstract preference

Examples:
- source comparison
- transformation strategy test
- performance benchmark
- quality validation result
- adoption or usability test result

## Process

### 1. Identify the trigger
Classify what happened:
- new decision
- changed decision
- changed assumption
- accepted risk
- scope change
- experiment outcome
- lifecycle stage change

### 2. Determine significance
Choose the lightest logging format that still preserves meaning.

### 3. Capture the minimum useful context
Record:
- date
- title
- context
- decision or change
- rationale
- trade-offs
- risks
- owner if known
- follow-up or revisit trigger if needed

### 4. Make temporary choices explicit
If the choice is temporary, record:
- why it is temporary
- what is intentionally simplified
- what would need to change later
- when the decision should be revisited

### 5. Record lifecycle impact
If relevant, record whether the change means:
- still PoC
- now MVP
- now production-oriented
- hardening is required
- retirement should be considered

## Output modes

### Mode 1: Lightweight decision log entry
Use for moderate but meaningful decisions.

### Mode 2: Structural decision entry
Use for durable and architecture-shaping decisions.

### Mode 3: Experiment entry
Use for evidence-driven conclusions from trials or spikes.

## Output expectations
The output should be:
- concise
- understandable later by someone new
- explicit about trade-offs
- explicit about temporary vs durable intent
- useful for future revisiting

## Prompts the skill should ask internally
- What problem was being solved?
- Why was this choice made now?
- What options existed?
- What was intentionally not chosen?
- What trade-offs were accepted?
- Is this temporary or durable?
- What would trigger revisiting this choice?

## Anti-patterns to challenge
The skill must challenge:
- undocumented semantic changes
- changing source trust assumptions with no record
- “temporary” shortcuts that are not labeled temporary
- architecture drift with no rationale
- quality compromises with no explicit acknowledgment
- scope expansion without revised success criteria

## Special behavior for PoC and MVP
For PoC and MVP work, explicitly record:
- what is intentionally simplified
- what risk is accepted temporarily
- what is out of scope
- what must change before production

## Special behavior for production-oriented work
For production-oriented work, increase emphasis on:
- ownership
- operational supportability
- lineage and traceability
- quality implications
- cost implications
- change management consequences

## Success criterion
A future engineer, analyst, steward, or product owner should be able to read the entry and understand:
- what changed
- why it changed
- what trade-offs were accepted
- whether the choice still deserves to stand