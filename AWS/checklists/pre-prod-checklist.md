# Pre-Production Readiness Checklist

Use this checklist before promoting a workload into production or production-like critical use.

## Scope and ownership
- [ ] The production scope is explicit.
- [ ] Business and technical owners are identified.
- [ ] Support ownership is clear.
- [ ] Critical dependencies are known.

## Architecture and resilience
- [ ] Single points of failure are understood and accepted only if temporary.
- [ ] Backup and recovery expectations are defined.
- [ ] Rollback or fallback is realistic.
- [ ] Capacity or scaling assumptions were reviewed.

## Security and compliance
- [ ] IAM and permission boundaries were reviewed.
- [ ] Secrets handling is production-safe.
- [ ] Encryption requirements are met.
- [ ] Internet exposure and trust boundaries are understood.
- [ ] Audit or compliance expectations are addressed if relevant.

## Delivery and change safety
- [ ] Deployment steps are rehearsed or credible.
- [ ] Release validation is defined.
- [ ] Infrastructure and application changes are version controlled.
- [ ] Production configuration is reviewed separately from lower environments.

## Observability and operations
- [ ] Logs, metrics, and alerts are in place.
- [ ] Dashboards exist for critical health indicators.
- [ ] Runbooks exist for the most likely incidents.
- [ ] Escalation paths are known.

## Decision memory
- [ ] Temporary shortcuts are explicitly documented.
- [ ] Major design choices are logged.
- [ ] Known risks accepted for go-live are visible.

## Final question
- [ ] Are we ready for production, or only eager to call it production?
