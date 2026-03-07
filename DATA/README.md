# DATA Agent System

A reusable package of agent context, rules, skills, templates, and lifecycle guidance for data projects, data products, analytics engineering work, and data-oriented PoCs / MVPs.

This package exists to help AI agents and humans work with stronger discipline when designing, validating, and evolving data initiatives.

It captures reusable logic inspired by:
- data as code
- data as product
- MVP / PoC delivery discipline
- analytics engineering good practices
- ownership and lineage thinking
- pragmatic software and delivery principles applied to data work

---

## Purpose

This package helps structure data work so it stays aligned with value, ownership, and delivery reality.

It is meant to improve:
- problem framing
- value-oriented data design
- data MVP definition
- pipeline design quality
- ownership clarity
- decision traceability
- data quality planning
- architecture communication
- lifecycle thinking
- industrialization decisions

---

## Design philosophy

### Start from value, not plumbing
A data initiative should begin with the business decision, workflow, or user outcome being improved.

### Prefer narrow useful slices
The first useful version should be small enough to validate value, assumptions, and feasibility quickly.

### Treat durable outputs as products
If a dataset, metric layer, model, or pipeline will be reused and supported over time, the agent should think in data product terms.

### Adapt rigor to maturity
PoC, MVP, and production are not the same beast.
The agent must scale rigor appropriately.

### Make ownership and lineage explicit
If nobody owns the semantics, quality, and lifecycle, the thing is not stable no matter how fancy the pipeline is.

### Log important decisions
Assumptions, trade-offs, scope shifts, and experiment outcomes should be recorded.

### Think visually when useful
Data flow, ownership, and lifecycle questions often become clearer when diagrammed.

---

## Repository structure

### `AGENTS.md`
Global operating doctrine for the agent.

Defines:
- how the agent should think
- what it should optimize for
- what anti-patterns it should challenge
- how it should adapt to PoC / MVP / production stages

### `rules/`
Persistent guardrails and design constraints.

Examples:
- data product principles
- data as code
- PoC and MVP discipline
- documentation and decision logging

### `skills/`
Reusable workflows for recurring data tasks.

Examples:
- design data solution
- review data MVP
- create data architecture diagram

### `templates/`
Reusable structures for common artifacts.

Examples:
- data PRD
- data product canvas
- data solution design
- experiment log

---

## How to use this package

## 1. For early discovery and framing
Use:
- `AGENTS.md`
- `rules/data-product-principles.md`
- `rules/mvp-and-poc-discipline.md`
- `templates/data-prd-template.md`

Use this combination when:
- the request is vague
- a stakeholder asks for a dashboard, pipeline, report, or AI feature
- you need to clarify value before solutioning

---

## 2. For data MVP definition
Use:
- `AGENTS.md`
- `rules/mvp-and-poc-discipline.md`
- `rules/data-as-code.md`
- `skills/review-data-mvp.skill.md`
- `templates/data-product-canvas-template.md`

Use this combination when:
- defining the smallest viable scope
- removing speculative features
- deciding what to simplify intentionally

---

## 3. For data solution design
Use:
- `AGENTS.md`
- `rules/data-product-principles.md`
- `rules/data-as-code.md`
- `skills/design-data-solution.skill.md`
- `templates/data-solution-design-template.md`

Use this combination when:
- designing ingestion / transformation / serving patterns
- evaluating architecture options
- structuring ownership, quality, and flow

---

## 4. For decision and experiment memory
Use:
- `rules/documentation-and-decision-logging.md`
- `templates/experiment-log-template.md`

Use this combination when:
- a major assumption changes
- an MVP is simplified
- a technical spike succeeds or fails
- a data architecture choice is made
- a risk is accepted temporarily

---

## 5. For visual explanation
Use:
- `skills/create-data-architecture-diagram.skill.md`

Use this combination when:
- flows cross multiple systems
- ownership is unclear
- a data path is too complex to explain cleanly with prose
- a PoC / MVP needs a fast visual explanation

---

## Suggested working pattern

For most meaningful work, the agent should reason in this order:

1. problem and context
2. stakeholders and users
3. expected value or decision improved
4. scope and maturity stage
5. data sources and constraints
6. ownership and semantics
7. quality expectations
8. architecture / solution options
9. delivery approach
10. risks and trade-offs
11. logging of important decisions
12. diagrams when useful

The agent must not jump directly from vague request to broad pipeline design.

---

## Recommended maturity logic

### PoC
Good questions:
- Can this work?
- What key assumption are we testing?
- What can be simplified safely?

### MVP
Good questions:
- Does this create real value?
- Is the scope minimal and credible?
- Is the output usable by real people?

### Production
Good questions:
- Is ownership clear?
- Is support realistic?
- Are lineage, quality, and changes traceable?
- Is the cost justified?
- Can this be safely evolved?

---

## Contribution guidance

Add a new rule when:
- the guidance is stable
- it should apply broadly across data work
- it protects against recurring mistakes

Add a new skill when:
- the task happens repeatedly
- structured reasoning improves the outcome
- the output has a recurring shape

Add a new template when:
- the artifact is used often
- consistency improves quality
- you want the agent to produce more reusable outputs

---

## Warning

This package is a decision-support system.
It should help the agent think more clearly, not generate bigger piles of ceremonial text.

The goal is value, clarity, and disciplined delivery — not prettier overengineering.