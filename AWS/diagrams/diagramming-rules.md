# Diagramming Rules

## Principle
Use diagrams when they improve clarity, alignment, review quality, or decision-making.

The agent should not default to long prose when a visual structure would explain the system more effectively.

## When a diagram should be proposed or produced
Create or suggest a diagram when:
- multiple components interact
- there are several integrations
- data moves across boundaries
- trust boundaries matter
- deployment topology matters
- ownership is unclear
- migration phases are being discussed
- a PoC or MVP must be explained quickly
- trade-offs between architectural options need to be compared

## Core rule
Start with the smallest diagram that explains the decision or system.
Do not start with maximum detail unless that detail is necessary.

## Preferred sequence
When useful, think in this order:
1. system context
2. main containers / components
3. flows and boundaries
4. deployment/runtime view
5. deeper detail only if required

## What a useful diagram should do
A useful diagram should:
- make the system easier to understand
- show the key parts and relationships
- help identify risks or responsibilities
- support a decision, explanation, or review

## What a diagram should not do
A diagram should not:
- add decorative complexity
- try to show everything at once
- bury the main flow in clutter
- look “technical” without becoming clearer
- replace clear written assumptions and trade-offs

## Required diagram qualities
A diagram should:
- have a clear purpose
- match the audience
- show relevant boundaries
- label important flows
- stay readable at a glance
- omit noise that does not improve understanding

## Output expectation
When a diagram is appropriate, the agent should ideally provide:
1. the chosen diagram type
2. a short summary of what it shows
3. diagram source or structured diagram brief
4. assumptions and omissions
