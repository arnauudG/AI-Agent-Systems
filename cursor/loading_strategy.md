# Loading Strategy

## Purpose
This file explains how Cursor should consume the repository without turning context into soup.

The core rule:
Use the smallest relevant context set for the task.

Do not treat the whole repository as mandatory input.

## Default loading order

### Step 1
Start with:
- `CURSOR.md`
- `routing-guide.md`

### Step 2
Load the leading package:
- package README
- package AGENTS

### Step 3
Load only the most relevant:
- rules
- skills
- templates
for the active task

### Step 4
Load a playbook only if:
- the task crosses multiple packages
- the scenario is orchestration-heavy
- sequencing across domains matters

### Step 5
Load `shared/` only when cross-cutting reinforcement is useful:
- stage awareness
- decision logging
- visual thinking
- implementation pragmatism

## Recommended context sets

### A. Vague business request
Load:
- `CURSOR.md`
- `../BUSINESS-ANALYSIS/README.md`
- `../BUSINESS-ANALYSIS/AGENTS.md`
- `../BUSINESS-ANALYSIS/rules/problem-framing.md`
- `../BUSINESS-ANALYSIS/rules/value-and-outcomes.md`
- `../BUSINESS-ANALYSIS/skills/frame-business-problem.skill.md`

Optional:
- `../BUSINESS-ANALYSIS/templates/business-problem-template.md`

---

### B. Governance / Collibra request
Load:
- `CURSOR.md`
- `../COLLIBRA/README.md`
- `../COLLIBRA/AGENTS.md`
- `../COLLIBRA/rules/semantic-modeling-principles.md`
- `../COLLIBRA/rules/business-to-technical-translation.md`
- `../COLLIBRA/skills/translate-need-into-collibra-design.skill.md`

Optional:
- `../COLLIBRA/templates/governance-use-case-template.md`
- `../COLLIBRA/templates/asset-model-template.md`

---

### C. Data product request
Load:
- `CURSOR.md`
- `../DATA/README.md`
- `../DATA/AGENTS.md`
- `../DATA/rules/data-product-principles.md`
- `../DATA/rules/mvp-and-poc-discipline.md`
- `../DATA/skills/design-data-solution.skill.md`

Optional:
- `../DATA/templates/data-product-canvas-template.md`
- `../DATA/templates/data-solution-design-template.md`

---

### D. AWS architecture request
Load:
- `CURSOR.md`
- `../AWS/README.md`
- `../AWS/AGENTS.md`
- `../AWS/rules/architecture-principles.md`
- `../AWS/rules/well-architected-review.md`
- `../AWS/skills/design-solution.skill.md`

Optional:
- `../AWS/templates/solution-design-template.md`
- `../AWS/diagrams/diagram-types.md`

---

### E. End-to-end initiative
Load:
- `CURSOR.md`
- `../BUSINESS-ANALYSIS/README.md`
- `../COLLIBRA/README.md`
- `../DATA/README.md`
- `../AWS/README.md`
- one relevant file from `../shared/playbooks/`

Then add only the needed rules, skills, and templates from each package.

## Anti-patterns to avoid
- loading every file by default
- loading multiple overlapping templates too early
- using playbooks for simple single-domain tasks
- repeating shared guidance and package guidance redundantly
- using massive context when the task is still vague

## Escalation logic
If the task becomes:
- process-heavy → add BUSINESS-ANALYSIS BPMN files
- ownership-heavy → add COLLIBRA ownership files
- lifecycle-heavy → add DATA SDLC files
- production-heavy → add AWS operational/readiness files

## Success criterion
Cursor should have enough context to reason sharply,
but not so much that it becomes a markdown archaeologist trapped under its own library.
