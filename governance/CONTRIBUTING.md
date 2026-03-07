# Contributing

## Purpose
This repository is a modular AI reasoning system.
Contributions must improve clarity, reuse, and maintainability.

## Before adding a file
Ask:
- Is this reusable across multiple future cases?
- Does something equivalent already exist?
- Is this guidance stable enough to deserve a permanent file?
- Does it belong in a package or in shared?
- Would updating an existing file be better?

## Choose the right file type

### Add a rule when:
- the guidance is stable
- it should constrain behavior repeatedly
- it expresses a reusable decision principle or guardrail

### Add a skill when:
- the task is performed repeatedly
- structured reasoning improves quality
- the task has a repeatable input/process/output pattern

### Add a template when:
- the artifact is reused often
- consistency improves quality
- structure matters more than prose freedom

### Add a checklist when:
- completeness matters
- the task benefits from quick review gates
- the user needs a lightweight operational control

### Add a playbook when:
- multiple packages must work together
- the scenario occurs repeatedly
- orchestration matters more than isolated domain guidance

## Keep shared small
Put a file in `shared/` only if it genuinely applies across packages.
If it is domain-specific, keep it in the domain package.

## Avoid duplication
Do not create near-duplicate files with slightly different wording.
Prefer:
- one strong shared principle
- package-specific specialization only where necessary

## Writing rules
- prefer concrete guidance over vague principles
- prefer “must / should / challenge / output expectation” phrasing
- keep prose readable
- avoid buzzword fog
- include anti-patterns when useful

## When to update governance files
Update the changelog when a meaningful repo change occurs.
Create a package evolution ADR when the repo structure or orchestration logic changes materially.
Use `review-checklist.md` before accepting meaningful repo changes.
Use `VERSIONING.md` to decide whether the change is MAJOR, MINOR, or PATCH.
