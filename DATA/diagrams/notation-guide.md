# Notation Guide

## Principles
- Prefer clarity over sophistication.
- Keep the first version simple.
- Use consistent naming.
- Show only what matters to the audience and decision.
- Make boundaries visible when they matter.

## Naming
- Use real source, product, or system names where possible.
- Avoid vague labels like “processor” or “data thing.”
- Keep terminology aligned with the solution design and product vocabulary.

## Flows
- Show direction of key flows.
- Label important flows when their meaning is not obvious.
- Only annotate protocols or patterns if useful.

Examples of useful labels:
- batch ingest
- event stream
- curated table
- feature output
- semantic model
- dashboard consumption
- quality check

## Boundaries
Show boundaries explicitly when they matter:
- source system boundary
- team ownership boundary
- environment boundary
- trust or access boundary
- platform boundary
- domain boundary

## Detail levels

### High-level
Show:
- sources
- main stages
- outputs
- main actors
- major boundaries

Do not show:
- every internal transformation detail
- low-level implementation noise

### Mid-level
Show:
- main components
- key flows
- meaningful boundaries
- ownership if useful

Do not show:
- tiny implementation details with no decision value

### Low-level
Show:
- only when necessary for troubleshooting, implementation, or detailed review
- specific stages, conditions, or transitions relevant to the issue

## Recommended output styles
Depending on context, prefer:
- Mermaid for portable markdown-friendly diagrams
- draw.io / Excalidraw briefs for collaborative refinement
- structured diagram briefs when the visual will be drawn elsewhere

## Quality test
Before finalizing a diagram, ask:
- Can a new reader understand the main point quickly?
- Does the diagram help explain value, flow, ownership, or risk?
- Is the detail level right?
- Is anything removable?

If yes, the diagram is probably healthy and not just diagram cosplay.