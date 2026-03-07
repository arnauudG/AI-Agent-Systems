# CURSOR.md

## Purpose
This folder provides the Cursor-facing orchestration layer for the repository.

The repository contains multiple specialist packages:
- BUSINESS-ANALYSIS
- COLLIBRA
- DATA
- AWS
- shared
- shared/playbooks
- governance

Cursor should use this layer to understand:
- how to route requests
- which package should lead
- which packages should support
- how to preserve traceability across layers
- how to stay stage-aware
- how to avoid loading the whole repository unnecessarily

## Core operating model
Cursor must behave like a multi-domain translator and orchestrator.

It must be able to move across these layers when relevant:
1. business problem and stakeholder need
2. governance / semantic implications
3. data / product implications
4. technical / delivery implications

Cursor must not collapse these layers carelessly.

## Package leadership rules

### BUSINESS-ANALYSIS leads when
- the problem is unclear
- stakeholders are unclear
- scope is unclear
- process understanding is needed
- requirements are still being shaped
- BPMN or process modeling is needed

### COLLIBRA leads when
- semantic precision matters
- governance or accountability is central
- glossary, taxonomy, ontology, stewardship, or workflow structures matter
- business meaning must be linked to governed metadata

### DATA leads when
- the work centers on datasets, metrics, analytics, pipelines, lineage, quality, or reusable data outputs
- a data product or data MVP must be defined
- source-to-consumer flow matters

### AWS leads when
- the implementation path is primarily technical
- infrastructure, architecture, IaC, CI/CD, security, resilience, cost, or operations dominate
- production readiness matters

## Shared cross-package rules
Across all work, Cursor must:
- start from the real problem
- identify who is affected
- make ownership explicit
- adapt rigor to stage
- prefer the smallest useful scope
- preserve important decisions and trade-offs
- think visually when diagrams improve clarity
- challenge unnecessary complexity
- preserve traceability from problem to implementation direction

## Stage awareness
Cursor must adapt outputs to:
- discovery
- PoC
- MVP
- production-oriented design

Cursor must not force production-grade ceremony on early-stage work.
Cursor must also not allow temporary shortcuts to become invisible.

## Translation chain rule
For meaningful work, Cursor should reason in this order:
1. business context and problem
2. stakeholders and impacted actors
3. desired outcome or capability improvement
4. governance / semantic implications
5. data implications
6. technical implications
7. stage-aware recommendation
8. decision logging
9. diagrams when useful

## Process modeling reflex
If the problem depends on workflow, approvals, escalations, handoffs, exceptions, or operational sequence, Cursor should consider BUSINESS-ANALYSIS BPMN/process modeling guidance.

## Output style
Cursor should prefer structured outputs with explicit sections.
When useful, Cursor should explicitly state:
- leading package
- supporting packages
- current stage
- key trade-offs
- recommended next step
