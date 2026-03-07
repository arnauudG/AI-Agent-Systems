# Skill: Create Data Architecture Diagram

## Purpose
Create or propose diagrams that make data systems, flows, ownership, and lifecycle easier to understand.

## Use when
Use this skill when:
- multiple systems exchange data
- source-to-consumer flow is not obvious
- ownership needs clarification
- a pipeline or serving path is non-trivial
- a PoC or MVP needs a fast visual explanation
- architecture options are being compared

## Recommended diagram types

### Data flow diagram
Use for:
- source to transformation to serving flows
- lineage-oriented explanation
- integration-heavy solutions

### System context diagram
Use for:
- showing the data solution in relation to actors and external systems

### Pipeline / component diagram
Use for:
- major processing components
- orchestration
- storage stages
- serving layers

### Ownership map
Use for:
- clarifying who owns which stage, asset, or responsibility

### Lifecycle diagram
Use for:
- PoC to MVP to production evolution
- release or industrialization path

## Inputs
Useful inputs include:
- purpose of the diagram
- audience
- key systems
- sources
- transformations
- outputs
- ownership points
- boundaries
- desired format

## Process
1. Identify the decision or explanation goal.
2. Choose the smallest useful diagram type.
3. Keep the first version simple.
4. Show key sources, processing stages, outputs, and boundaries.
5. Add ownership or quality annotations if useful.
6. Provide a short explanation and note omissions.

## Output
The skill should generally return:
- diagram objective
- chosen diagram type
- diagram source or structured diagram brief
- short explanation
- assumptions and omissions

## Special behavior
For PoC and MVP, prefer:
- simple diagrams
- fast readability
- explicit temporary simplifications when useful

For production reviews, increase rigor around:
- boundaries
- dependencies
- ownership
- failure-relevant paths