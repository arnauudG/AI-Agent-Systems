# Notation Guide

This guide keeps diagrams consistent, readable, and useful.

## General notation principles
- Prefer clarity over visual cleverness.
- Keep labels short and meaningful.
- Use consistent names across diagrams and documents.
- Show only what matters for the intended audience and decision.
- Keep the first version simple.

## Naming
- Use real system or service names when possible.
- Avoid vague labels like “processor,” “module,” or “system” unless they are further qualified.
- Keep naming consistent with architecture docs and code/repo terminology.

## Boundaries
Show boundaries explicitly when they matter:
- AWS account boundary
- VPC or network boundary
- environment boundary
- team ownership boundary
- trust boundary
- third-party boundary

Label boundaries clearly.

## Flows
- Label important flows when the purpose is not obvious.
- Show direction of major flows.
- Prefer simple directional arrows.
- Only annotate protocols or formats when useful to the decision or review.

Examples of useful annotations:
- HTTPS
- event
- batch file
- metadata sync
- asynchronous trigger
- IAM role assumption

## Detail level
### High-level diagrams
Show:
- actors
- systems
- major dependencies
- major flows

Do not show:
- every internal service
- internal config details
- low-level implementation noise

### Mid-level diagrams
Show:
- core components
- major stores
- key flows
- meaningful boundaries

Do not show:
- every internal class or function
- clutter that does not affect architecture understanding

### Low-level diagrams
Show:
- only when necessary for implementation or troubleshooting
- specific paths, components, or sequences relevant to the issue

## Recommended output styles
Depending on context, prefer:
- Mermaid for fast, portable diagrams
- PlantUML when structure or precision matters
- draw.io / Excalidraw briefs when a polished or collaborative visual is needed

## Diagram quality test
Before finalizing a diagram, ask:
- Can a new reader understand the main idea in under a minute?
- Does the diagram help make or explain a decision?
- Is the audience-appropriate detail level correct?
- Are boundaries and main flows visible?
- Is any clutter removable?

If the answer is no, simplify.