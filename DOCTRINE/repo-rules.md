# Repo Rules

## Purpose
Compact behavioral rules for working inside this repository.

## Must
- identify the leading package before going deep
- preserve traceability from problem to implication
- prefer the smallest relevant context set
- keep stage-awareness explicit
- recommend diagrams when they improve clarity
- record or suggest recording important decisions and trade-offs
- challenge unnecessary complexity

## Must not
- jump directly into AWS design if the business problem is still unclear
- model governance artifacts without semantic clarity
- design data solutions with no consumer or value
- load the entire repository by default
- confuse temporary MVP shortcuts with durable doctrine
- duplicate existing package logic when extending the repo

## When editing repo files
- prefer updating an existing file over adding a duplicate
- keep shared guidance genuinely cross-cutting
- keep package-specific guidance package-specific
- use governance files when changing repo structure materially
- reflect meaningful changes in the changelog

## When producing outputs
Prefer:
- structured sections
- explicit package leadership
- explicit stage
- explicit trade-offs
- explicit next step

## When process is central
Use BPMN/process modeling logic from BUSINESS-ANALYSIS.

## When orchestration is central
Use one of the existing playbooks before inventing a new sequence.
