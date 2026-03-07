# PR Checklist

Use this checklist for meaningful changes to code, infrastructure, CI/CD, security, or operations.

## Scope and intent
- [ ] The change is clearly described.
- [ ] The reason for the change is clear.
- [ ] The scope is appropriately small and reviewable.
- [ ] The impacted components or environments are identified.

## Design and implementation
- [ ] The implementation matches the intended problem being solved.
- [ ] Simpler alternatives were considered where relevant.
- [ ] Assumptions are explicit.
- [ ] Important trade-offs are stated when the change is non-trivial.

## Infrastructure and configuration
- [ ] Infrastructure changes are version controlled.
- [ ] Terraform or IaC changes were validated.
- [ ] Provider / module version impacts were considered.
- [ ] Risk of replacement or destruction is understood.
- [ ] Environment-specific configuration is handled safely.

## Security
- [ ] IAM / permissions impact was reviewed.
- [ ] Secrets are not hardcoded or exposed.
- [ ] Sensitive data handling was considered.
- [ ] New ingress / egress / exposure paths are understood.
- [ ] Logging does not expose sensitive information unnecessarily.

## Testing and validation
- [ ] Appropriate tests were run.
- [ ] Validation matches the risk of the change.
- [ ] Smoke test or verification approach is clear.
- [ ] Failure modes were considered for risky changes.

## CI/CD and rollout
- [ ] Deployment impact is understood.
- [ ] Rollback or fallback approach is known.
- [ ] Pipeline changes were reviewed for safety and maintainability.
- [ ] Artifact or deployment promotion logic remains sound.

## Operations and observability
- [ ] Logging, metrics, or traces were updated if needed.
- [ ] Alerts or dashboards were updated if needed.
- [ ] Operational ownership remains clear.
- [ ] Runbooks or support notes were updated if behavior changed.

## Cost and sustainability
- [ ] Cost impact is understood for meaningful changes.
- [ ] Always-on resources are justified.
- [ ] Lifecycle / retention impact was considered.

## Documentation and traceability
- [ ] Relevant docs were updated.
- [ ] Important decisions were captured if needed.
- [ ] Reviewer focus areas are clearly identified.

## Final reviewer question
- [ ] Would I be comfortable supporting this in production at 03:00?