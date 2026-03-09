# AWS Agent System

A reusable package of agent context, engineering rules, skills, templates, checklists, and diagramming guidance for AWS architecture, DevOps, and software delivery work.

This package is meant to help AI agents and humans work with stronger architectural judgment, better delivery discipline, and clearer operational thinking.

It captures reusable logic inspired by:
- AWS Solutions Architect Professional thinking
- AWS DevOps Engineer Professional thinking
- AWS Well-Architected principles
- pragmatic SDLC and engineering best practices

---

## Purpose

This package exists to make AWS-related work more consistent, more reviewable, and less dependent on memory, improvisation, or tribal knowledge.

It should help with:
- solution design
- Terraform / IaC review
- CI/CD review
- migration planning
- threat modeling
- production readiness reviews
- operational readiness
- architecture documentation
- decision logging
- diagram-first thinking

---

## Design philosophy

### Prefer clarity over complexity
Do not choose a service or pattern because it is fashionable.
Choose the simplest option that satisfies the actual requirements.

### Prefer managed simplicity
When multiple options meet the need, prefer the option with lower operational burden unless constraints justify something more complex.

### Make trade-offs explicit
Every serious design has trade-offs in security, resilience, cost, performance, operability, and delivery speed.
The agent must surface them.

### Treat operations as part of design
A system is not “done” because it deploys.
It is ready when it can be observed, supported, recovered, and evolved safely.

### Use SDLC discipline
Architecture without delivery discipline becomes theater.
Delivery without architecture discipline becomes chaos.
Both are required.

### Record important decisions
Decisions, assumptions, changes, and trade-offs should be logged instead of left floating in chat history or human memory.

### Think visually when appropriate
If a diagram would make a solution easier to understand or review, the agent should propose one or generate one.

---

## Repository structure

### `AGENTS.md`
Global operating doctrine for the agent.

Defines:
- how the agent should think
- what it should optimize for
- what anti-patterns it should challenge
- what quality dimensions it must review

### `rules/`
Persistent design and review guardrails.

These are the non-negotiables and engineering constraints that should apply repeatedly.

Examples:
- architecture principles
- security baseline
- IaC standards
- Well-Architected review logic
- delivery engineering
- observability and operations
- SDLC discipline
- testing and quality gates
- decision logging

### `skills/`
Reusable workflows for recurring tasks.

A skill explains:
- when to use it
- what inputs it needs
- how it should reason
- what output it should produce

Examples:
- design solution
- review Terraform
- review CI/CD
- run threat model
- assess Well-Architected risks
- create architecture diagram
- update decision log

### `templates/`
Reusable structures for common artifacts.

Examples:
- PRD
- solution design
- ADR
- architecture review
- deployment plan
- runbook
- postmortem
- service README
- decision log

### `checklists/`
Fast operational control points.

These are short review aids for:
- pull requests
- releases
- pre-production readiness
- operational readiness

### `diagrams/`
Visual thinking guidance.

These files help the agent:
- recognize when a diagram is useful
- choose the right diagram type
- keep diagrams simple and decision-oriented
- structure architecture visuals consistently

---

## How to use this package

## 1. For architecture design
Use:
- `AGENTS.md`
- `rules/architecture-principles.md`
- `rules/well-architected-review.md`
- `rules/security-baseline.md`
- `skills/design-solution.skill.md`

Optional:
- `diagrams/diagram-types.md`
- `diagrams/notation-guide.md`
- `templates/solution-design-template.md`
- `templates/architecture-review-template.md`

Use this combination when:
- designing a new workload
- evolving an existing solution
- comparing architecture options
- challenging overengineering

---

## 2. For Terraform / IaC review
Use:
- `AGENTS.md`
- `rules/iac-standards.md`
- `rules/security-baseline.md`
- `rules/documentation-and-decision-logging.md`
- `skills/review-terraform.skill.md`

Optional:
- `checklists/pr-checklist.md`
- `templates/pr-template.md`
- `../SHARED/templates/decision-log-template.md`

Use this combination when:
- reviewing modules
- reviewing plans
- checking environment promotion readiness
- checking production risk

---

## 3. For CI/CD and delivery review
Use:
- `rules/delivery-engineering.md`
- `rules/sdlc-engineering.md`
- `rules/testing-and-quality-gates.md`
- `skills/review-ci-cd.skill.md`

Optional:
- `checklists/release-checklist.md`
- `templates/deployment-plan-template.md`

Use this combination when:
- reviewing pipelines
- designing delivery flows
- checking rollback readiness
- tightening quality gates

---

## 4. For threat modeling and security review
Use:
- `rules/security-baseline.md`
- `rules/well-architected-review.md`
- `skills/threat-model.skill.md`

Optional:
- `templates/threat-model-template.md`
- `diagrams/diagram-types.md`

Use this combination when:
- exposing an API
- handling sensitive data
- introducing cross-account access
- adding third-party dependencies
- changing trust boundaries

---

## 5. For Well-Architected or production readiness review
Use:
- `rules/well-architected-review.md`
- `rules/observability-and-operations.md`
- `rules/cost-and-finops.md`
- `skills/well-architected-assessment.skill.md`

Optional:
- `checklists/pre-prod-checklist.md`
- `checklists/ops-readiness-checklist.md`
- `templates/architecture-review-template.md`
- `templates/incident-runbook-template.md`

Use this combination when:
- preparing go-live
- challenging weaknesses in a workload
- identifying top remediation actions
- reviewing supportability

---

## 6. For migration planning
Use:
- `rules/architecture-principles.md`
- `rules/delivery-engineering.md`
- `rules/documentation-and-decision-logging.md`
- `skills/migration-strategy.skill.md`

Optional:
- `templates/solution-design-template.md`
- `templates/deployment-plan-template.md`
- `../SHARED/templates/decision-log-template.md`

Use this combination when:
- planning transition states
- structuring phased migrations
- handling cutover and rollback logic

---

## 7. For diagram generation
Use:
- `diagrams/diagramming-rules.md`
- `diagrams/diagram-types.md`
- `diagrams/notation-guide.md`
- `skills/create-architecture-diagram.skill.md`

Use this combination when:
- the system has multiple components
- boundaries matter
- flows matter
- a visual summary would clarify trade-offs
- a PoC/MVP needs to be explained quickly

---

## 8. For decision and change logging
Use:
- `rules/documentation-and-decision-logging.md`
- `skills/update-decision-log.skill.md`
- `../SHARED/templates/decision-log-template.md`

Use this combination when:
- a material design choice is made
- scope changes
- assumptions change
- a risk is accepted
- an experiment succeeds or fails
- an architecture changes in a meaningful way

---

## Suggested working pattern

For most meaningful work, the agent should think in this order:

1. context and problem
2. requirements and constraints
3. options and trade-offs
4. design proposal
5. delivery approach
6. operational implications
7. cost implications
8. security implications
9. decision logging
10. diagramming when it improves clarity

The agent must not jump directly from vague intent to implementation detail.

---

## Recommended maturity logic

The agent should adapt rigor to the stage of work.

### PoC
Prioritize:
- speed of learning
- feasibility validation
- explicit assumptions
- minimal architecture

Avoid:
- premature enterprise hardening
- feature sprawl
- platform overengineering

### MVP
Prioritize:
- value delivery
- narrow scope
- baseline observability
- credible operating model

Avoid:
- speculative features
- “future-proofing” for imaginary scale
- gold-plating

### Production
Increase rigor in:
- security
- deployment safety
- monitoring and alerting
- rollback and recovery
- ownership
- supportability
- cost governance

---

## Contribution guidance

When adding files to this package:

### Add a new rule when:
- the guidance is stable
- it should apply across many tasks
- it expresses a reusable engineering constraint

### Add a new skill when:
- the task is repeated often
- the work benefits from a structured reasoning process
- the output shape is somewhat predictable

### Add a new template when:
- the artifact is reused repeatedly
- structure improves quality and consistency
- you want the agent to produce more standardized outputs

### Add a new checklist when:
- the task needs a short operational gate
- completeness matters more than elaborate prose

### Add a new diagram file when:
- visual consistency matters
- the agent often needs help choosing or structuring diagrams

---

## Maintenance guidance

Keep this package:
- opinionated
- concrete
- reusable
- low-noise

Avoid:
- duplicating the same logic in many files
- adding vague consultant prose
- creating files that are never referenced
- turning every thought into a permanent rule

Use versioned commits and clear commit messages when evolving the package.

Recommended commit style:
- `feat(aws-agent): add deployment plan template`
- `feat(aws-agent): add operational readiness checklist`
- `refactor(aws-agent): simplify diagramming guidance`
- `docs(aws-agent): clarify readme usage paths`

---

## Warning

This package is a decision-support system, not a substitute for judgment.

It should improve reasoning, not replace it.
It should reduce avoidable mistakes, not create false confidence.
It should help the agent think more clearly, not more ceremonially.
