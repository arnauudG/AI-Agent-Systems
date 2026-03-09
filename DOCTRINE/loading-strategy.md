# Loading Strategy

## Purpose
This file explains how to consume the repository without drowning in context soup.

The core rule:
Load the smallest relevant set of files needed for the task.

Do not load the whole repository by default.

## Loading principles

### 1. Start small
Begin with:
- the tool entry point (e.g. `CLAUDE.md`, `.cursor/rules/repo-doctrine.mdc`)
- the relevant package README
- the relevant package AGENTS

Then add:
- specific rules
- specific skills
- specific templates
only as needed

### 2. Prefer the leading package first
Choose one leading package based on the routing guide.
Only add supporting packages when the task truly crosses domains.

### 3. Add playbooks only for orchestration-heavy work
Use `SHARED/playbooks/` when:
- multiple packages are needed
- the initiative is end-to-end
- a recurring scenario is being handled
- sequencing matters across domains

### 4. Use shared only for cross-cutting reinforcement
Use `SHARED/` when:
- stage awareness matters
- common decision logging is needed
- visual thinking applies across domains
- implementation pragmatism needs reinforcement

Do not use `SHARED/` as a replacement for package-specific logic.

## Recommended default load sets

### A. Vague business request
Load:
- tool entry point
- `DOCTRINE/routing-guide.md`
- `BUSINESS-ANALYSIS/README.md`
- `BUSINESS-ANALYSIS/AGENTS.md`
- `BUSINESS-ANALYSIS/rules/problem-framing.md`
- `BUSINESS-ANALYSIS/rules/value-and-outcomes.md`
- `BUSINESS-ANALYSIS/skills/frame-business-problem.skill.md`

Optional:
- `BUSINESS-ANALYSIS/templates/business-problem-template.md`

---

### B. Governance / Collibra request
Load:
- tool entry point
- `DOCTRINE/routing-guide.md`
- `COLLIBRA/README.md`
- `COLLIBRA/AGENTS.md`
- `COLLIBRA/rules/semantic-modeling-principles.md`
- `COLLIBRA/rules/business-to-technical-translation.md`
- `COLLIBRA/skills/translate-need-into-collibra-design.skill.md`

Optional:
- `COLLIBRA/templates/governance-use-case-template.md`
- `COLLIBRA/templates/asset-model-template.md`

---

### C. Data product request
Load:
- tool entry point
- `DOCTRINE/routing-guide.md`
- `DATA/README.md`
- `DATA/AGENTS.md`
- `DATA/rules/data-product-principles.md`
- `DATA/rules/mvp-and-poc-discipline.md`
- `DATA/skills/design-data-solution.skill.md`

Optional:
- `DATA/templates/data-product-canvas-template.md`
- `DATA/templates/data-solution-design-template.md`

---

### D. AWS architecture request
Load:
- tool entry point
- `DOCTRINE/routing-guide.md`
- `AWS/README.md`
- `AWS/AGENTS.md`
- `AWS/rules/architecture-principles.md`
- `AWS/rules/well-architected-review.md`
- `AWS/skills/design-solution.skill.md`

Optional:
- `AWS/templates/solution-design-template.md`
- `AWS/diagrams/diagram-types.md`

---

### E. End-to-end initiative
Load:
- tool entry point
- `DOCTRINE/routing-guide.md`
- `DOCTRINE/loading-strategy.md`
- `BUSINESS-ANALYSIS/README.md`
- `BUSINESS-ANALYSIS/AGENTS.md`
- `COLLIBRA/README.md`
- `DATA/README.md`
- `AWS/README.md`
- the most relevant playbook from `SHARED/playbooks/`

Then selectively add rules, skills, and templates from each package.

## Anti-patterns to avoid

### Do not:
- load every file in every package by default
- mix shared rules and package rules redundantly
- load multiple templates before the task shape is clear
- use playbooks for simple single-domain tasks
- turn loading into ritualized markdown maximalism

## Escalation logic
If the task becomes:
- workflow-heavy → add BPMN/process modeling guidance from BUSINESS-ANALYSIS
- ownership-heavy → add COLLIBRA ownership files
- lifecycle-heavy → add DATA SDLC files
- production-heavy → add AWS operational/readiness rules

## Success criterion
The agent should have enough context to reason well,
but not so much context that it becomes a librarian lost in its own basement.
