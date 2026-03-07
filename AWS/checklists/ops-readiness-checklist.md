# Operations Readiness Checklist

Use this checklist to review whether a workload can be supported safely after go-live.

## Ownership and support
- [ ] Service ownership is explicit.
- [ ] An operations or support contact is identified.
- [ ] Escalation paths are documented.
- [ ] Support expectations and coverage hours are known.

## Observability
- [ ] Useful dashboards exist for the main health indicators.
- [ ] Logs are centralized and searchable.
- [ ] Metrics cover traffic, latency, errors, and saturation where relevant.
- [ ] Alerts are actionable rather than noisy.
- [ ] Traces or request-correlation mechanisms exist where needed.

## Runbooks and recovery
- [ ] Common failure modes are documented.
- [ ] Operators know how to diagnose the most likely incidents.
- [ ] Restart, rollback, failover, or recovery steps are documented.
- [ ] Backup and restore expectations are defined where relevant.
- [ ] Incident severity and escalation guidance is clear.

## Access and security operations
- [ ] Operational access paths are documented and least-privilege.
- [ ] Secrets rotation or credential handling is defined.
- [ ] Audit or access logs are available where needed.
- [ ] Emergency access expectations are clear.

## Reliability and capacity
- [ ] Known bottlenecks or failure points are understood.
- [ ] Capacity assumptions are documented.
- [ ] Scaling behavior is known.
- [ ] Dependency failure impact is understood.

## Change and maintenance
- [ ] Routine maintenance tasks are known.
- [ ] Patch, dependency, or platform update ownership is clear.
- [ ] Deployment health checks are defined.
- [ ] Decision logs or runbooks were updated for material changes.

## Final question
- [ ] Could the support team handle a bad day without reverse-engineering the system from scratch?
