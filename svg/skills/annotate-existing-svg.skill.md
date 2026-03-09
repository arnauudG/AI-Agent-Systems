---
name: annotate-existing-svg
description: Add labels, callouts, or annotations to an existing SVG without breaking its structure or layout.
---

# Annotate Existing SVG

## Use when
- Adding callouts, numbers, or explanatory text to an existing diagram
- Highlighting a specific area or flow for documentation or review
- Adding a legend, footnote, or "current vs target" labels to an architecture diagram

## Steps
1. Identify where annotations belong and whether a new group (e.g. `annotations`, `callouts`) is needed.
2. Add a dedicated group for annotations so they can be toggled or styled consistently.
3. Place labels and leaders so they do not overlap existing content or reduce legibility.
4. Use consistent typography and alignment with the rest of the diagram.
5. Preserve existing semantic structure; do not regroup or rename unrelated elements.
6. Ensure annotations are readable at presentation scale and do not create visual clutter.

## Output expectations
- Annotations in a clearly identified group
- No unintended layout shifts or overlapping text
- Original diagram meaning and structure preserved
