# Data Production Readiness Checklist

Use this checklist before moving a data product, pipeline, or serving layer toward production use.

## Scope and ownership
- [ ] Scope of the productionized solution is clear.
- [ ] Business ownership is clear.
- [ ] Technical ownership is clear.
- [ ] Operational support ownership is clear.
- [ ] Escalation path is known.

## Value and usage
- [ ] The production use case is clear.
- [ ] Real consumers are identified.
- [ ] Success and failure conditions are understood.
- [ ] The product is valuable enough to justify sustained support.

## Data and lineage
- [ ] Main sources are documented.
- [ ] Lineage is clear enough for troubleshooting and change analysis.
- [ ] Key dependencies are known.
- [ ] Upstream and downstream impact is understood.

## Quality and controls
- [ ] Quality expectations are explicit.
- [ ] Quality validation exists at an appropriate level.
- [ ] Known failure conditions are understood.
- [ ] Data quality issues can be detected and communicated.

## Access and security
- [ ] Access patterns are reviewed.
- [ ] Sensitive data handling is understood.
- [ ] Usage restrictions or controls are in place if needed.
- [ ] Data exposure is justified and controlled.

## Reliability and operations
- [ ] Failure visibility exists.
- [ ] Monitoring is defined.
- [ ] Support or runbook notes exist.
- [ ] Recovery expectations are realistic.
- [ ] Manual interventions are documented where still needed.

## Change and delivery
- [ ] Change process is understood.
- [ ] Important decisions are logged.
- [ ] Major assumptions are logged.
- [ ] Lifecycle stage is explicit.
- [ ] Temporary shortcuts are removed or consciously accepted.

## Cost and sustainability
- [ ] Main cost drivers are known.
- [ ] Storage / compute / refresh cost is proportionate to value.
- [ ] Wasteful always-on behavior is challenged.
- [ ] Retention and lifecycle choices were reviewed.

## Final question
- [ ] Are we ready not only to build this, but to own it, support it, and explain it?