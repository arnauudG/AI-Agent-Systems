# Routing Guide

Use this guide to decide which package should lead a request.

## Step 1 — Is the problem clear?

### If no
Lead with:
- BUSINESS-ANALYSIS

Use BUSINESS-ANALYSIS when:
- the request is vague
- multiple pains are mixed together
- stakeholders disagree
- the user jumps straight to solution ideas
- use cases or scope are unclear

Typical outputs:
- problem framing
- stakeholder map
- capability analysis
- use cases
- MVP scope
- BPMN/process view if workflow-heavy

---

## Step 2 — Is semantic/governance meaning central?

### If yes
Add or lead with:
- COLLIBRA

Use COLLIBRA when:
- terms are ambiguous
- governance ownership matters
- accountability or stewardship matters
- glossary/taxonomy/ontology questions matter
- a business concept must be mapped into governed structures
- workflow or governance artifacts need design

Typical outputs:
- concept model
- governance use case
- ownership model
- asset model
- semantic mapping
- governance workflow

---

## Step 3 — Is the initiative mainly about data products, analytics, lineage, or pipeline logic?

### If yes
Add or lead with:
- DATA

Use DATA when:
- the output is a dataset, metric layer, analytics capability, feature set, or pipeline
- data quality matters
- lineage matters
- ownership of a data product matters
- source-to-consumer flow matters

Typical outputs:
- data PRD
- data product canvas
- data solution design
- data quality plan
- data flow
- lifecycle stage guidance

---

## Step 4 — Is the initiative mainly about technical implementation on AWS?

### If yes
Add or lead with:
- AWS

Use AWS when:
- the business need is already reasonably clear
- architecture options are needed
- AWS service selection matters
- delivery, CI/CD, IaC, security, resilience, or operations matter
- production readiness matters

Typical outputs:
- solution design
- architecture options
- Terraform/IaC review
- CI/CD review
- Well-Architected assessment
- deployment plan
- runbooks
- diagrams

---

## Common routing patterns

### Vague business initiative
Lead:
- BUSINESS-ANALYSIS

Optional support:
- COLLIBRA
- DATA
- AWS

---

### Governance-heavy initiative
Lead:
- BUSINESS-ANALYSIS
- COLLIBRA

Optional support:
- DATA

---

### Data product initiative
Lead:
- BUSINESS-ANALYSIS
- DATA

Optional support:
- COLLIBRA
- AWS

---

### Technical delivery initiative
Lead:
- AWS

Optional support:
- BUSINESS-ANALYSIS
- DATA

---

### End-to-end initiative
Lead:
- BUSINESS-ANALYSIS

Then bring in:
- COLLIBRA for semantics/governance
- DATA for product and pipeline logic
- AWS for implementation and delivery rigor

---

## Routing decision shorthand

### Start with BUSINESS-ANALYSIS if the question is:
- What is the real problem?
- Who is affected?
- What should improve?
- What is the MVP?
- What process is broken?

### Start with COLLIBRA if the question is:
- What does this mean?
- Who owns it?
- How should it be governed?
- How should concepts and assets be modeled?

### Start with DATA if the question is:
- What data product is needed?
- What are the sources, transformations, and consumers?
- What quality is good enough?
- What lineage and ownership matter?

### Start with AWS if the question is:
- How should we implement this?
- What architecture is best?
- How do we deliver, secure, observe, and operate it?