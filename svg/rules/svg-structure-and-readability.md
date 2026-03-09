# SVG Structure and Readability Rules

## Goal
Produce SVG that can be understood and edited without specialized tooling.

## Rules
- Organize the SVG into logical sections using grouped elements.
- Add IDs to major blocks, such as `title`, `subtitle`, `left-panel`, `timeline`, `legend`.
- Keep XML/source order aligned with visual reading order.
- Keep indentation consistent.
- Use comments sparingly but usefully to mark major sections.
- Prefer one logical visual block per group.
- Keep element names and IDs descriptive.

## Preferred pattern
- outer svg
- background
- header
- body containers
- connectors
- annotations
- footer/page number
