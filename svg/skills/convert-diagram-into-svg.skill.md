---
name: convert-diagram-into-svg
description: Convert a described diagram, sketch, or wireframe into clean hand-authored SVG following structure and semantics rules.
---

# Convert Diagram into SVG

## Use when
- Turning a text description, bullet list, or rough sketch into an SVG diagram
- Recreating a diagram from another format (e.g. whiteboard, Mermaid, draw.io export) as maintainable SVG
- Producing SVG from a conceptual outline (e.g. "three boxes: source, process, sink")

## Steps
1. Extract the main concepts, boundaries, and relationships from the source.
2. Choose a layout pattern (e.g. left-to-right flow, two-column, timeline) that fits the content.
3. Create the SVG skeleton with semantic groups and IDs before filling in visuals.
4. Add shapes, labels, and connectors in source order matching visual order.
5. Apply spacing and typography rules; ensure legibility at target scale.
6. Add a legend if color or line style carries meaning.
7. Verify the result is hand-editable and semantically clear.

## Output expectations
- SVG that reflects the intended meaning, not a literal copy of noisy export markup
- Semantic grouping and IDs from the start
- No unnecessary path or transform complexity
