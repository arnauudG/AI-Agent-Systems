# Data Pipeline Review Checklist

Use this checklist when reviewing a data pipeline design or implementation.

## Purpose and scope
- [ ] The purpose of the pipeline is clear.
- [ ] The consuming use case is explicit.
- [ ] The pipeline is not broader than necessary.

## Sources and inputs
- [ ] Inputs are identified.
- [ ] Source assumptions are explicit.
- [ ] Source limitations are known.
- [ ] Ownership of sources is understood.

## Logic and transformations
- [ ] Main transformation logic is understandable.
- [ ] Important business logic is reviewable.
- [ ] Hidden manual logic was challenged.
- [ ] Transformation complexity is proportionate to the use case.

## Quality
- [ ] Key quality checks exist or are planned.
- [ ] Freshness expectations are explicit.
- [ ] Error conditions are known.
- [ ] Data quality trade-offs are documented if applicable.

## Operability
- [ ] Failures can be detected.
- [ ] Pipeline behavior is observable enough for the stage.
- [ ] Retry / rerun / recovery expectations are understood.
- [ ] Ownership for incident triage is clear.

## Delivery and change
- [ ] Pipeline logic is versioned where feasible.
- [ ] Significant changes can be reviewed.
- [ ] Environment differences are understood.
- [ ] Important changes are logged.

## Architecture fit
- [ ] The design is not overengineered for the maturity stage.
- [ ] The design has a believable hardening path if needed.
- [ ] Simpler alternatives were challenged.

## Final question
- [ ] Does this pipeline solve a real problem clearly, or is it just an elaborate machine for moving bytes around impressively?