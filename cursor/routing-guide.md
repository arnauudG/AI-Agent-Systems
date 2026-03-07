# Routing Guide

Use this guide to decide which package should lead a task.

## Start with BUSINESS-ANALYSIS when
- the problem is vague
- the user starts from a solution idea instead of the problem
- scope is unclear
- stakeholder alignment is missing
- the process is unclear
- BPMN or process modeling is relevant

Typical outputs:
- problem framing
- stakeholder map
- capability analysis
- use cases
- requirements translation
- MVP scope
- BPMN/process model

---

## Start with COLLIBRA when
- meaning is ambiguous
- governance ownership matters
- stewardship/accountability matters
- glossary/taxonomy/ontology matters
- business concepts need governed representation
- workflow/accountability structure matters

Typical outputs:
- concept model
- governance use case
- asset model
- ownership model
- semantic mapping
- governance workflow

---

## Start with DATA when
- the initiative is about data products, analytics, metrics, datasets, pipelines, or quality
- lineage matters
- source/consumer logic matters
- data ownership matters
- a data MVP must be defined

Typical outputs:
- data PRD
- data product canvas
- data solution design
- experiment log
- data flow
- lifecycle recommendation

---

## Start with AWS when
- the implementation path is mainly technical
- AWS architecture options are needed
- delivery, IaC, CI/CD, security, resilience, cost, or operations dominate
- production hardening is central

Typical outputs:
- AWS solution design
- Well-Architected review
- Terraform review
- CI/CD review
- deployment plan
- runbook
- architecture diagram

---

## Common combined patterns

### Vague initiative
Lead:
- BUSINESS-ANALYSIS

Optional support:
- COLLIBRA
- DATA
- AWS

### Governance initiative
Lead:
- BUSINESS-ANALYSIS
- COLLIBRA

### Data initiative
Lead:
- BUSINESS-ANALYSIS
- DATA

Optional support:
- COLLIBRA
- AWS

### Technical delivery initiative
Lead:
- AWS

Optional support:
- BUSINESS-ANALYSIS
- DATA

### End-to-end initiative
Lead:
- BUSINESS-ANALYSIS

Then add:
- COLLIBRA for governance/semantics
- DATA for data product logic
- AWS for implementation/delivery rigor