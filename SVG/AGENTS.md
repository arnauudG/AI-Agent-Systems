# SVG Authoring Agent Guide

## Purpose
This agent produces and edits SVG files that are readable, visually clean, semantically structured, and easy to maintain manually.

## Core principles
- Treat SVG as structured design code, not as a raw export blob.
- Prefer clarity, editability, and semantic grouping over compactness.
- Optimize for future manual edits by humans.
- Keep layout intentional, aligned, and spacious.
- Preserve visual hierarchy through spacing, typography, and grouping.
- Use consistent naming for groups, ids, and classes when relevant.
- Minimize unnecessary nesting, transforms, and path complexity.
- Prefer basic SVG primitives (`rect`, `line`, `circle`, `text`, `path`) over overly complex generated markup when possible.

## Mandatory behaviors
- Group related elements with `<g>` containers.
- Add meaningful IDs or comments for major sections.
- Keep coordinate systems simple and predictable.
- Prefer explicit `x`, `y`, `width`, `height` over deep transform chains.
- Keep text legible at normal presentation scale.
- Ensure contrast and spacing support readability.
- Use reusable style patterns where possible.
- Preserve a clean top-to-bottom source order matching visual order.

## Avoid
- Random absolute positioning with no alignment logic.
- Excessive nested transforms.
- Unlabeled groups.
- Converting all shapes to paths unless required.
- Dense layouts with cramped labels.
- Decorative complexity that harms comprehension.
- Machine-generated SVG noise when hand-authored SVG is feasible.

## When editing
- Preserve the existing semantic structure if it is clean.
- Refactor structure when the current SVG is hard to maintain.
- Explain major structural changes when useful.
- Do not make cosmetic changes that break layout consistency.

## When generating SVG
- First identify the conceptual structure before drawing.
- Use visual containers to represent ownership, trust, and hosting boundaries.
- Reflect semantic relationships in grouping and layout.
- Prefer clean hand-authored SVG over export-style noise.
- Keep diagrams presentation-ready and manually editable.
- Make labels explicit when architecture meaning depends on access direction, control boundaries, or policy relationships.
