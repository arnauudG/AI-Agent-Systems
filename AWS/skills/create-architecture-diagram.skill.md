# Skill: Create Architecture Diagram

## Purpose
Create or propose diagrams that make AWS systems, delivery flows, or infrastructure changes easier to understand, review, and discuss.

This skill exists because some problems are better explained visually than with a wall of text.

## Use when
Use this skill when:
- a system has multiple components or integrations
- data or requests move across boundaries
- trust boundaries matter
- runtime or deployment topology matters
- architecture options are being compared
- ownership or responsibility is unclear
- a PoC or MVP needs a quick, understandable visual
- a design review would benefit from a system view
- a migration path or phased change needs to be explained

## Do not use when
Do not force a diagram when:
- the task is trivial and fully understandable without one
- the diagram would repeat a tiny amount of already-clear information
- the audience only needs a single narrow answer and no visual clarification

## Inputs
The skill works best when it has:
- the purpose of the diagram
- the audience
- the system or change being described
- the key components
- major data or control flows
- relevant boundaries
- desired level of detail
- preferred output format if any

## Possible audiences
Examples:
- executive stakeholders
- product owners
- engineers
- platform team
- security reviewers
- operations team
- mixed audience

## Recommended diagram types
Choose the smallest diagram that explains the problem well.

### System Context Diagram
Use to show:
- the system
- users / actors
- external systems
- main relationships

### Container / Component Diagram
Use to show:
- the main application or platform building blocks
- how services interact
- data stores and processing components

### Data Flow Diagram
Use to show:
- how data moves
- sources, processing, storage, and consumers
- meaningful boundaries in the path

### Sequence Diagram
Use to show:
- interactions over time
- request flows
- auth flows
- orchestration
- asynchronous steps

### Deployment Diagram
Use to show:
- where things run
- account / VPC / subnet / service placement
- runtime topology
- environment separation

### Lifecycle Diagram
Use to show:
- phases
- release flow
- migration steps
- maturity evolution

## Process
### 1. Identify the decision goal
Ask:
- Why does this diagram exist?
- What should the reader understand or decide after seeing it?

### 2. Identify the audience
Adjust detail level based on audience.

- Executives need clarity, boundaries, and value context.
- Engineers need components, flows, and operational implications.
- Security reviewers need trust boundaries, access paths, and exposure points.
- Operations teams need runtime structure, dependencies, and support-relevant flows.

### 3. Choose the diagram type
Select the type that best matches the question being answered.

### 4. Determine scope
Keep the first version narrow and useful.
Do not show everything.
Show only what is needed for understanding or decision-making.

### 5. Capture essential elements
Include only what matters:
- actors
- components
- data stores
- flows
- boundaries
- ownership if relevant
- protocols or annotations only when useful

### 6. Keep the diagram readable
Prefer:
- simple structure
- short labels
- visible boundaries
- few enough elements to scan quickly

Avoid:
- decorative clutter
- every internal detail
- unlabeled mystery arrows
- mixing too many diagram goals at once

### 7. Provide a short explanation
The diagram should not stand alone as a cryptic relic.
Include:
- what it shows
- what is intentionally omitted
- key assumptions
- key trade-offs if relevant

## Output formats
Depending on context, the skill may output:

### 1. Mermaid
Best for:
- quick generation
- markdown compatibility
- portable diagrams in docs and repos

### 2. PlantUML
Best for:
- more structured diagrams
- teams already using UML-style workflows

### 3. draw.io / Excalidraw brief
Best for:
- human refinement
- polished stakeholder diagrams
- collaborative visual editing

### 4. Structured diagram brief
Best for:
- handing off to another tool or human
- cases where diagram source is not needed immediately

## Output structure
The skill should generally return:

### Diagram objective
What the diagram is meant to explain.

### Recommended diagram type
Which type was chosen and why.

### Diagram source or diagram brief
A diagram definition or structured visual brief.

### Key assumptions
What was assumed.

### Key omissions
What was intentionally left out to keep the diagram useful.

## Quality test
Before finalizing, check:
- Can a new reader understand the main point quickly?
- Does the diagram help a decision, review, or explanation?
- Are the important boundaries visible?
- Is the level of detail right for the audience?
- Can anything be removed without hurting meaning?

## Example prompts this skill should handle
- “Show the high-level AWS architecture for this MVP.”
- “Create a deployment diagram for this EKS-based platform.”
- “Give me a data flow diagram for this ingestion pipeline.”
- “Compare option A and option B visually.”
- “Draw the trust boundaries for this API and private backend.”
- “Create a sequence diagram for this auth flow.”

## Special behavior for PoC and MVP
For PoC and MVP contexts, the skill should:
- prefer fast, high-value diagrams
- focus on main components and flows
- avoid fake production-grade detail unless explicitly needed
- make temporary simplifications visible when important

## Special behavior for production reviews
For production-oriented diagrams, the skill should increase rigor around:
- trust boundaries
- deployment boundaries
- operational dependencies
- failure points
- ownership and support implications