# AWS Agent System

A reusable repository of agent context, rules, skills, and templates for AWS architecture, DevOps, and software delivery work.

The goal is to help AI agents and humans produce solutions that consistently reflect:
- AWS Well-Architected thinking
- Solutions Architect Professional judgment
- DevOps Engineer Professional delivery discipline
- pragmatic software engineering and SDLC best practices

## Why this repository exists
AWS knowledge often stays trapped in:
- certification notes
- individual experience
- tribal team habits
- scattered design reviews

This repository turns that knowledge into reusable operating guidance.

It is meant to improve:
- architecture quality
- consistency of design decisions
- infrastructure reviews
- CI/CD quality
- security posture
- operational readiness
- documentation quality

## Repository structure

### `AGENTS.md`
Global operating doctrine for the agent.
Defines how the agent should think, what it should optimize for, and which anti-patterns it should challenge.

### `rules/`
Non-negotiable review and design rules.
These are persistent guardrails.

Examples:
- architecture principles
- security baseline
- IaC standards
- delivery engineering rules
- observability and operations
- cost and FinOps
- SDLC discipline

### `skills/`
Reusable expert workflows.
A skill explains when to use a capability, what inputs it expects, how it reasons, and what structured output it should produce.

Examples:
- design AWS solution
- review Terraform
- review CI/CD pipeline
- run threat model
- assess Well-Architected risks

### `templates/`
Reusable output formats for common artifacts.

Examples:
- ADR
- architecture review
- deployment plan
- runbook
- postmortem
- service README
- PR template

## How to use

### For architecture design
Use:
- `AGENTS.md`
- `rules/architecture-principles.md`
- `rules/well-architected-review.md`
- `skills/design-solution.skill.md`
- `templates/architecture-review-template.md`

### For Terraform review
Use:
- `AGENTS.md`
- `rules/iac-standards.md`
- `rules/security-baseline.md`
- `skills/review-terraform.skill.md`
- `templates/pr-template.md`

### For CI/CD review
Use:
- `rules/delivery-engineering.md`
- `rules/testing-and-quality-gates.md`
- `skills/review-ci-cd.skill.md`
- `templates/deployment-plan-template.md`

### For threat modeling
Use:
- `rules/security-baseline.md`
- `skills/threat-model.skill.md`
- `templates/threat-model-template.md`

### For production readiness reviews
Use:
- `rules/observability-and-operations.md`
- `rules/well-architected-review.md`
- `skills/well-architected-assessment.skill.md`
- `templates/incident-runbook-template.md`

## Design philosophy

### 1. Prefer clarity over tool worship
Do not recommend a service because it is fashionable.
Choose services that fit the problem, the team, and the operating model.

### 2. Prefer managed simplicity
When multiple options satisfy requirements, prefer the one with lower operational burden unless constraints justify otherwise.

### 3. Make trade-offs explicit
Every serious design has trade-offs in security, resilience, cost, performance, and complexity.
The agent must surface them.

### 4. Treat operations as part of design
A system is not ready because it deploys.
It is ready when it can be observed, supported, recovered, and evolved safely.

### 5. Use SDLC discipline
Architecture without delivery discipline is theater.
Delivery without architecture discipline is chaos.
Both matter.

## Recommended way to evolve this repository
- keep rules stable and opinionated
- keep skills practical and task-oriented
- add templates only for outputs you actually reuse
- version important changes
- write ADRs for major modifications to this repository itself

## Contribution guidance
When adding new rules or skills:
1. keep them concrete
2. prefer decision heuristics over vague principles
3. state when to use them
4. state what anti-patterns they are meant to prevent
5. avoid duplicating logic across files unless intentional

## Suggested future additions
- serverless patterns
- event-driven architecture guidance
- EKS platform guidance
- multi-account operating model guidance
- resilience testing guidance
- data platform patterns
- platform engineering golden paths

## Warning
This repository is a decision-support system, not a substitute for engineering judgment.
Use it to improve decisions, not to outsource thinking.