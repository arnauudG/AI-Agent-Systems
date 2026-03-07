# Versioning

## Purpose
Versioning helps track meaningful evolution of the repository as a reasoning system.

## Version model
Use semantic-style versioning:

`MAJOR.MINOR.PATCH`

### MAJOR
Increase when:
- package structure changes in a breaking way
- orchestration logic changes materially
- shared/package boundaries are reworked
- file naming or loading conventions change in ways that break existing usage

### MINOR
Increase when:
- a new package is added
- new reusable rules, skills, templates, or playbooks are added
- a package gains meaningful new capabilities without breaking prior structure

### PATCH
Increase when:
- wording is clarified
- examples are improved
- non-breaking refinements are made
- checklists/templates are lightly improved without changing structure materially

## Examples
- `1.0.0` = first stable multi-package system
- `1.1.0` = add BPMN skill and process modeling guidance
- `1.2.0` = add real-world playbooks
- `2.0.0` = restructure shared/package boundaries in a breaking way

## Release note expectation
Each meaningful version increment should be reflected in `CHANGELOG.md`.