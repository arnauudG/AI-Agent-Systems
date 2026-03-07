# COLLIBRA Agent System

A reusable package of agent context, rules, skills, templates, and guidance for Collibra-related work.

This package is meant to help AI agents and humans reason more clearly about:
- business concepts
- glossary and taxonomy
- ontology and relationships
- ownership and accountability
- governance operating model
- asset modeling
- workflow design
- business-to-technical translation

It is not only about using Collibra as a tool.
It is about using Collibra as a semantic and governance bridge between business intent and implementation reality.

---

## Purpose

This package exists to reduce confusion between:
- business meaning and technical representation
- governance intent and governance theater
- ownership labels and actual accountability
- semantic modeling and random metadata accumulation

It should help with:
- framing governance use cases
- clarifying business concepts
- designing Collibra asset models
- mapping operating model roles into Collibra structures
- linking business concepts to technical implementations
- creating maintainable governance workflows
- documenting modeling decisions
- explaining models visually

---

## Design philosophy

### Start with meaning
Do not begin with asset types, domains, or workflows before understanding what concept, decision, process, or accountability need is actually involved.

### Separate levels of abstraction
The agent must distinguish clearly between:
- business concept
- definition
- taxonomy
- ontology
- policy / control
- ownership model
- technical implementation

### Prefer usable models over elegant complexity
A model that nobody can apply, maintain, or understand is not a good model, even if it looks intellectually impressive in a whiteboard séance.

### Tie governance to actual use
Governance artifacts should exist because they support:
- understanding
- ownership
- compliance
- operational control
- discoverability
- decision-making
- implementation alignment

### Make accountability explicit
Ownership in Collibra should reflect real accountability, not decorative labels.

### Think in translation chains
A strong Collibra design often translates:
business need → business concept → governance artifact → technical linkage → operational use

### Record important semantic choices
Definitions, modeling trade-offs, ownership assumptions, and workflow choices should be logged.

### Use diagrams when helpful
Many semantic and governance discussions become much clearer with a visual model.

---

## Repository structure

### `AGENTS.md`
Global operating doctrine for the agent.

Defines:
- how the agent should think
- what it should optimize for
- what anti-patterns it should challenge
- what quality dimensions it should review

### `rules/`
Persistent guidance and guardrails.

Examples:
- semantic modeling principles
- ontology and taxonomy discipline
- governance operating model rules
- ownership and accountability
- implementation pragmatism
- decision logging

### `skills/`
Reusable workflows for recurring tasks.

Examples:
- model a business concept
- translate a need into a Collibra design
- design an asset model
- map an operating model into Collibra
- create a Collibra diagram
- update decision logs

### `templates/`
Reusable structures for common artifacts.

Examples:
- business concept sheet
- governance use case
- asset model
- ownership model
- semantic mapping
- decision log
- diagram brief

---

## How to use this package

## 1. For business concept clarification
Use:
- `AGENTS.md`
- `rules/semantic-modeling-principles.md`
- `skills/model-business-concept.skill.md`
- `templates/business-concept-template.md`

Use this combination when:
- a term is ambiguous
- stakeholders use the same word differently
- a governance initiative starts from fuzzy semantics
- a concept needs definition before implementation

---

## 2. For governance use case design
Use:
- `AGENTS.md`
- `rules/implementation-pragmatism.md`
- `rules/ownership-and-accountability.md`
- `skills/translate-need-into-collibra-design.skill.md`
- `templates/governance-use-case-template.md`

Use this combination when:
- business needs must be translated into Collibra use cases
- roles, workflows, and governance artifacts need to be shaped
- a governance operating model needs to be grounded

---

## 3. For asset model design
Use:
- `AGENTS.md`
- `rules/semantic-modeling-principles.md`
- `rules/business-to-technical-translation.md`
- `skills/design-asset-model.skill.md`
- `templates/asset-model-template.md`

Use this combination when:
- designing or reviewing asset types and relationships
- connecting business semantics to technical metadata
- ensuring maintainable Collibra structures

---

## 4. For ownership model design
Use:
- `rules/ownership-and-accountability.md`
- `skills/define-ownership-model.skill.md`
- `templates/ownership-model-template.md`

Use this combination when:
- roles are unclear
- accountability must be mapped into Collibra structures
- there is confusion between steward, owner, custodian, consumer, approver, or operator roles

---

## 5. For visual explanation
Use:
- `skills/create-collibra-diagram.skill.md`
- `diagrams/diagramming-rules.md`
- `diagrams/diagram-types.md`
- `diagrams/notation-guide.md`

Use this combination when:
- semantic structures are too abstract in prose
- asset relationships are complex
- operating model or ownership needs a visual explanation
- workflow logic needs to be communicated quickly

---

## Suggested working pattern

For most meaningful work, the agent should reason in this order:

1. business problem or governance need
2. concepts and definitions
3. ownership and accountability
4. governance implications
5. Collibra artifact implications
6. technical linkage if relevant
7. workflow / operational implications
8. trade-offs and limitations
9. decision logging
10. diagramming when useful

The agent must not jump straight from vague need to asset model design.

---

## Contribution guidance

Add a new rule when:
- the guidance is stable
- it should apply broadly across Collibra or governance work
- it protects against recurring semantic or governance mistakes

Add a new skill when:
- the task occurs repeatedly
- structured reasoning improves the outcome
- the output has a recurring shape

Add a new template when:
- the artifact is reused often
- consistency improves quality
- you want the agent to produce reusable outputs

---

## Warning

This package is not a substitute for stakeholder alignment, governance ownership, or implementation judgment.

It should help produce clearer, more grounded designs.
It should not become an excuse to generate elaborate metadata opera for problems that need simple clarity.
