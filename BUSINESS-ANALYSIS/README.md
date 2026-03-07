# BUSINESS-ANALYSIS Agent System

A reusable package of agent context, rules, skills, templates, and guidance for business analysis work.

This package is meant to help AI agents and humans reason more clearly about:
- business problems
- stakeholder needs
- capability gaps
- use cases
- requirements
- MVP scope
- translation from business intent to governance, data, and technical implementation

It is not only about writing requirement documents.
It is about turning vague business intent into actionable and traceable implementation logic.

---

## Purpose

This package exists to reduce confusion between:
- symptoms and root problems
- business outcomes and implementation ideas
- stakeholder wishes and actual requirements
- broad ambition and minimum viable scope
- business language and technical delivery language

It should help with:
- framing problems clearly
- identifying affected stakeholders
- mapping capabilities and pain points
- deriving use cases
- translating needs into structured requirements
- defining MVP scope
- connecting business needs to Collibra, data, and technical design
- documenting important analysis decisions

---

## Design philosophy

### Start with the problem
Do not begin with tools, features, or implementation patterns before understanding the business issue.

### Translate, do not merely transcribe
The agent must not just rewrite stakeholder language into prettier bullets.
It must interpret, structure, challenge, and clarify.

### Separate what from how
The agent must distinguish:
- problem
- desired outcome
- requirement
- constraint
- implementation option

These are not the same species.

### Prefer narrow value over broad ambition
The first useful scope should be small enough to deliver, validate, and refine.

### Maintain traceability
A good business analysis output should make it possible to understand how a business need led to governance, data, and technical implications.

### Use diagrams when helpful
Many stakeholder, capability, and translation problems become much clearer visually.

### Record important analysis choices
Scope decisions, assumptions, trade-offs, and translation decisions should be logged.

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
- problem framing
- capability thinking
- value and outcomes
- stakeholder analysis
- business-to-data-to-technical translation
- MVP discipline
- documentation and traceability

### `skills/`
Reusable workflows for recurring analysis tasks.

Examples:
- frame a business problem
- identify capabilities and pain points
- derive use cases
- translate requirements
- define MVP scope
- create business architecture diagrams

### `templates/`
Reusable structures for common artifacts.

Examples:
- business problem statement
- capability assessment
- use case
- requirements translation
- MVP scope
- stakeholder map
- decision log

---

## How to use this package

## 1. For problem framing
Use:
- `AGENTS.md`
- `rules/problem-framing.md`
- `rules/value-and-outcomes.md`
- `skills/frame-business-problem.skill.md`
- `templates/business-problem-template.md`

Use this combination when:
- the request is vague
- stakeholders jump straight to solution ideas
- you need to understand the actual pain point

---

## 2. For capability and stakeholder analysis
Use:
- `rules/business-capability-thinking.md`
- `rules/stakeholders-and-ownership-analysis.md`
- `skills/identify-capabilities-and-pain-points.skill.md`
- `templates/capability-assessment-template.md`
- `templates/stakeholder-map-template.md`

Use this combination when:
- multiple teams are involved
- responsibility is unclear
- the initiative affects operating model or process capability

---

## 3. For use case and requirement translation
Use:
- `rules/business-to-data-to-technical-translation.md`
- `skills/derive-use-cases.skill.md`
- `skills/translate-need-into-requirements.skill.md`
- `templates/use-case-template.md`
- `templates/requirements-translation-template.md`

Use this combination when:
- business language needs to become implementable
- you need traceable requirements
- multiple implementation paths are possible

---

## 4. For MVP definition
Use:
- `rules/mvp-scope-discipline.md`
- `skills/define-mvp-scope.skill.md`
- `templates/mvp-scope-template.md`

Use this combination when:
- scope is growing
- PoC/MVP boundaries are unclear
- you need the smallest valuable first version

---

## 5. For traceability and change memory
Use:
- `rules/documentation-and-traceability.md`
- later, decision log templates or skills if you add them

Use this combination when:
- assumptions change
- scope changes
- analysis conclusions evolve
- translation logic must be preserved

---

## Suggested working pattern

For most meaningful work, the agent should reason in this order:

1. context and business problem
2. stakeholders and affected actors
3. current pain or gap
4. desired outcome
5. capability implications
6. scope and constraints
7. use cases
8. requirements and assumptions
9. governance / data / technical implications
10. MVP recommendation
11. decision logging
12. diagrams when useful

The agent must not jump directly from vague need to implementation detail.

---

## Warning

This package is not here to mass-produce requirement wallpaper.

It should help create clearer thinking, sharper scope, and better translation into implementation reality.
