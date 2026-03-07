# Notation Guide

## Principles
- Prefer clarity over decorative complexity.
- Use consistent names across diagrams and templates.
- Keep the first version simple.
- Show only what matters for the discussion.
- Make meaning explicit.

## Naming
- Use real concept or asset names where possible.
- Avoid vague labels like “entity,” “object,” or “thing” unless properly qualified.
- Keep terms aligned with definitions used in concept sheets and governance templates.

## Relationships
- Label important relationships if their meaning is not obvious.
- Avoid unlabeled arrows that require telepathy.
- Show direction only when it matters semantically or operationally.

Examples of useful relationship labels:
- defines
- owns
- governs
- relates to
- depends on
- applies to
- evidences
- is implemented by

## Boundaries
Show boundaries explicitly when useful:
- business vs governance boundary
- governance vs technical boundary
- team or ownership boundary
- process phase boundary

## Detail levels

### High-level
Show:
- main concepts
- main roles
- main mappings
- main process steps

### Mid-level
Show:
- asset types
- important relationships
- ownership structure
- workflow steps
- mapping logic

### Low-level
Show:
- only when necessary for detailed design or review
- relationship details or process branches relevant to the issue

## Recommended output styles
Depending on context, prefer:
- Mermaid for fast markdown-friendly diagrams
- draw.io / Excalidraw briefs for collaborative refinement
- structured diagram briefs when a human will draw the final version

## Quality test
Before finalizing a diagram, ask:
- Does it clarify meaning or structure?
- Does it support a real conversation or decision?
- Is the level of detail right?
- Is anything removable?

If yes, the diagram is probably useful and not just expensive-looking geometry.