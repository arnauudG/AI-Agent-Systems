# Skill: Update Decision Log

## Purpose
Capture important architecture, delivery, security, operational, or scope decisions in a concise and reusable form.

This skill exists to prevent important context from evaporating into chat history and human memory.

## Use when
Use this skill when:
- a material design decision is made
- an important assumption changes
- a risk is explicitly accepted
- an architecture changes in a meaningful way
- a migration approach is selected
- a delivery or deployment strategy changes
- a PoC or MVP simplification is intentionally chosen
- an experiment or spike produces a meaningful result
- a decision should be traceable for future review

## Do not use when
Do not create noise for trivial choices such as:
- minor wording updates
- small refactors with no architectural or operational implication
- low-impact implementation details with no meaningful trade-off

## Inputs
The skill works best with:
- what changed or was decided
- why it changed or was decided
- context / problem being solved
- alternatives considered if relevant
- trade-offs or risks accepted
- owner if known
- whether the decision is temporary or long-lived
- what would trigger revisiting the decision

## Decision significance guide

### Lightweight log entry
Use when:
- the change matters
- traceability is useful
- the decision is important but not foundational

Examples:
- choosing a release strategy for an MVP
- accepting manual rollback for a short period
- selecting a simple storage option for a PoC
- narrowing scope for value delivery

### ADR-level entry
Use when:
- the decision is structural
- the decision affects multiple teams or systems
- the decision changes architecture in a durable way
- the decision has significant cost, security, reliability, or operational consequences

Examples:
- choosing serverless vs containers
- choosing multi-account boundaries
- introducing event-driven architecture
- selecting identity or network patterns
- defining a primary deployment model

### Experiment log entry
Use when:
- the decision comes from a trial or spike
- evidence matters more than policy
- the result may influence future architecture or delivery choices

Examples:
- benchmark result
- migration test outcome
- feasibility spike conclusion
- load test conclusion
- resilience test outcome

## Process
### 1. Identify the trigger
Determine what happened:
- new decision
- changed decision
- changed assumption
- accepted risk
- experiment outcome
- scope change

### 2. Determine significance
Choose the smallest adequate logging format:
- lightweight decision log
- ADR suggestion
- experiment log

### 3. Capture the minimum useful context
Record:
- date
- title
- context
- decision or change
- reason
- trade-offs
- risks
- follow-up if needed

### 4. Flag temporary choices
If the choice is temporary, explicitly mark:
- why it is temporary
- what is intentionally simplified
- what would need to change later
- the trigger for re-evaluation

### 5. Flag production implications
If the decision affects production concerns, explicitly note impact on:
- security
- resilience
- operability
- cost
- ownership
- rollback / recovery

## Output modes

### Mode 1: Lightweight decision log entry
Use short structured entries such as:

- Date
- Title
- Context
- Decision
- Rationale
- Trade-offs
- Follow-up

### Mode 2: ADR recommendation
When the decision is structural, recommend:
- create new ADR
or
- update existing ADR

Then provide a draft summary.

### Mode 3: Experiment log entry
Use:
- hypothesis
- test performed
- result
- interpretation
- implication for next steps

## Output expectations
The output should be:
- short enough to reuse quickly
- detailed enough to preserve meaning
- explicit about trade-offs
- explicit about temporary vs long-term intent

## Prompts the skill should ask internally
- What problem was being solved?
- Why was this decision made now?
- What options existed?
- What trade-offs were accepted?
- Is this temporary or durable?
- What should future readers know?
- When should this be revisited?

## Anti-patterns to challenge
The skill must challenge:
- undocumented “temporary” shortcuts
- vague claims like “we decided this already”
- major changes with no traceable rationale
- risk acceptance without explicit wording
- PoC simplifications that are not identified as such
- architecture drift with no change record

## Special behavior for PoC and MVP
For PoC and MVP contexts, explicitly record:
- what is intentionally simplified
- what risk is temporarily accepted
- what is out of scope
- what would be required before production hardening

## Special behavior for production-oriented work
For production-oriented work, increase emphasis on:
- ownership
- supportability
- rollback / recovery
- security impact
- cost implications
- long-term maintainability

## Example outputs

### Example lightweight entry
Title: Use Lambda for MVP ingestion path  
Context: Need a fast, low-ops ingestion path for low to moderate expected volume.  
Decision: Use Lambda + SQS instead of ECS for the MVP.  
Rationale: Lower operational overhead and faster delivery for current scale.  
Trade-offs: Less runtime control and potential concurrency considerations at higher volume.  
Follow-up: Reassess if throughput, runtime duration, or dependency complexity increases.

### Example experiment entry
Title: EKS vs ECS operational fit spike  
Hypothesis: ECS will satisfy workload needs with lower operational burden than EKS.  
Test: Compared deployment complexity, scaling model, observability setup, and IAM/network patterns.  
Result: ECS covers current needs with much lower setup and operational complexity.  
Implication: Prefer ECS for MVP; reserve EKS only if platform-level multi-tenant orchestration needs emerge.

## Success criterion
A future engineer should be able to read the entry and understand:
- what happened
- why it happened
- what trade-offs were accepted
- whether the decision still deserves to stand