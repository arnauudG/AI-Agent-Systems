# Release Checklist

Use this checklist before and during a release.

## Before release
- [ ] Scope of release is confirmed.
- [ ] Included changes are known.
- [ ] Release owner is identified.
- [ ] Stakeholders are informed if needed.
- [ ] Change window is appropriate.

## Build and artifact
- [ ] Build completed successfully.
- [ ] The correct artifact/version is identified.
- [ ] Artifact provenance is clear.
- [ ] Configuration differences across environments are understood.

## Deployment
- [ ] Deployment strategy is defined.
- [ ] Rollback / fallback plan is ready.
- [ ] Preconditions for deployment are satisfied.
- [ ] Required approvals are in place if applicable.

## Validation
- [ ] Smoke tests are prepared.
- [ ] Health checks are prepared.
- [ ] Monitoring is open and watched during release.
- [ ] Success criteria for release are explicit.

## Communication
- [ ] Release communications are prepared.
- [ ] Incident escalation path is clear.
- [ ] A decision-maker is available if rollback is needed.

## After release
- [ ] Smoke tests passed.
- [ ] Critical health indicators are stable.
- [ ] No unexpected alerts or regressions observed.
- [ ] Stakeholders were informed of completion where needed.
- [ ] Follow-up tasks were captured.

## Final question
- [ ] Did we merely deploy, or did we actually verify the system behaves correctly?