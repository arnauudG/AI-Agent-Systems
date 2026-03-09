# AI System Configuration Management

A reusable multi-package repository for configuring AI agents that support business analysis, governance design, data product work, and AWS architecture/delivery.

This repository is designed as a modular decision-support system.

It helps agents and humans move from:

**business need → analysis → governance/semantics → data/product design → technical delivery**

rather than jumping straight into tools, tickets, or architecture diagrams like caffeinated raccoons.

---

## Purpose

This repository exists to make AI-assisted work:
- more structured
- more reusable
- more traceable
- more stage-aware
- more grounded in real delivery and operating constraints

It is not just a collection of prompts.
It is an operating system for how agents should reason across different domains.

---

## Repository philosophy

### 1. Start from the problem
Do not start from tools, platforms, or implementation patterns before understanding the actual problem.

### 2. Separate layers of reasoning
A business problem, a governance implication, a data implication, and a technical design are related — but they are not the same thing.

### 3. Use the right specialist package
Not every problem should be solved in the same package.
This repository is deliberately modular.

### 4. Prefer value over ceremonial complexity
The goal is not to produce bigger documents.
The goal is to improve clarity, design quality, and implementation realism.

### 5. Preserve traceability
Important decisions, assumptions, scope choices, and trade-offs should remain visible.

### 6. Think visually when useful
If a diagram helps explain the problem, the structure, the flow, or the ownership model, the agent should create one.

---

## Repository structure

### Root files
- `AGENTS.md` — top-level orchestration doctrine for the whole system
- `README.md` — top-level explanation of how the system works

### `governance/`
Repository-governance artifacts for maintaining this system over time:
- contribution guidance
- review criteria for repo changes
- versioning rules
- changelog discipline
- package evolution ADR templates

### `claude/`
Claude-facing entry guidance for using the repository as a reasoning framework:
- routing guidance
- minimal loading strategy
- quick-start prompts
- Claude-specific orchestration context

### `cursor/`
Cursor-facing entry guidance for using the repository as a reasoning framework:
- routing guidance
- minimal loading strategy
- quick-start prompts
- Cursor-specific orchestration context
- compact repo rules for Cursor behavior

### `shared/`
Cross-cutting principles that apply across all packages:
- common operating principles
- stage awareness
- decision logging
- visual thinking
- implementation pragmatism

### `shared/playbooks/`
Scenario-based orchestration guides showing how packages work together.

### `BUSINESS-ANALYSIS/`
Use this package when the main need is:
- clarifying the business problem
- defining stakeholders and capabilities
- deriving use cases
- shaping requirements
- defining MVP scope
- modeling business processes

### `COLLIBRA/`
Use this package when the main need is:
- clarifying concepts and semantics
- defining ownership and accountability
- designing governance artifacts
- translating business meaning into Collibra structures
- linking governance to technical assets

### `DATA/`
Use this package when the main need is:
- defining a data product
- shaping a data MVP
- designing data flows or pipelines
- making quality and ownership explicit
- managing the data lifecycle

### `AWS/`
Use this package when the main need is:
- designing technical architecture
- evaluating AWS implementation options
- reviewing IaC or CI/CD
- applying Well-Architected and delivery rigor
- preparing for production

### `svg/`
Use this package when the main need is:
- creating or editing architecture diagrams, platform diagrams, or semantic visuals in SVG
- keeping diagram structure consistent, legible, and editable
- representing ownership, trust boundaries, access flows, or security architecture in diagrams
- refactoring or simplifying existing SVG for maintainability

---

## Package selection logic

### Start with `BUSINESS-ANALYSIS/` when:
- the request is vague
- the problem is not yet clear
- the scope is contested
- stakeholders disagree
- process or capability understanding is missing

### Start with `COLLIBRA/` when:
- terms are ambiguous
- governance or ownership is central
- the problem is semantic, policy-oriented, or accountability-related
- business meaning must connect to metadata structures

### Start with `DATA/` when:
- the output is a data product, dataset, metric layer, or analytics capability
- the main concern is sources, transformations, quality, lineage, or serving

### Start with `AWS/` when:
- the business need is already well understood
- the implementation direction is mainly technical
- delivery architecture, infrastructure, or DevOps rigor is central

### Start with `svg/` when:
- the task is to produce or edit SVG diagrams (architecture, platform, process, governance)
- diagram output must be readable, semantically structured, and safe to edit manually
- ownership, trust boundaries, or access patterns need to be represented accurately in visuals

---

## End-to-end flow

A typical end-to-end path looks like this:

1. `BUSINESS-ANALYSIS/`
   - frame the problem
   - identify stakeholders
   - derive use cases
   - define MVP scope

2. `COLLIBRA/`
   - clarify concepts
   - define ownership
   - map governance artifacts
   - design governance workflows if needed

3. `DATA/`
   - define data product implications
   - design pipeline or analytics flow
   - define quality and lineage expectations

4. `AWS/`
   - define technical architecture
   - define deployment and operational patterns
   - apply delivery and production rigor

Not every initiative needs all four packages.

---

## Example scenario patterns

### Business problem to governance use case
Use:
- `BUSINESS-ANALYSIS/`
- `COLLIBRA/`

### Business problem to data MVP
Use:
- `BUSINESS-ANALYSIS/`
- `DATA/`

### Governance-led data initiative
Use:
- `BUSINESS-ANALYSIS/`
- `COLLIBRA/`
- `DATA/`

### End-to-end product delivery on AWS
Use:
- `BUSINESS-ANALYSIS/`
- `DATA/`
- `AWS/`

### Architecture or platform diagrams (SVG)
Use:
- `svg/` (and optionally `AWS/` for architecture content, `COLLIBRA/` for semantic/governance visuals)

### Metadata/governance-driven operating model initiative
Use:
- `BUSINESS-ANALYSIS/`
- `COLLIBRA/`
- optionally `DATA/`

---

## Recommended maintenance model

- keep packages modular
- keep `governance/` focused on repo evolution rather than domain content
- keep `claude/` focused on entry-layer routing and loading guidance rather than duplicating package doctrine
- keep `cursor/` focused on entry-layer routing and loading guidance rather than duplicating package doctrine
- keep `shared/` small and cross-cutting
- keep `svg/` focused on structure, semantics, and editability (not tool-specific export formats)
- add new rules only when they are broadly reusable
- add new skills only for repeated tasks
- add new playbooks when multiple packages must be orchestrated together
- record major design changes using decision logs
- record meaningful repo-structure changes in `governance/CHANGELOG.md`

---

## Warning

This repository is a reasoning system, not a substitute for judgment.

It should make AI agents and humans more disciplined, not more verbose.
It should reduce confusion, not produce prettier confusion.
