# Diagram Types

Use the right diagram for the right question.

## 1. Data Flow Diagram
### Use when
You need to explain how data moves from source to consumer.

### Best for
- ingestion flows
- transformation pipelines
- lineage-oriented discussion
- architecture explanation for data teams

### Show
- sources
- processing / transformation stages
- storage or serving layers
- consumers
- important boundaries where relevant

---

## 2. System Context Diagram
### Use when
You need to explain the data solution in relation to users and surrounding systems.

### Best for
- stakeholder communication
- early-stage framing
- MVP explanation
- showing external dependencies

### Show
- users / actors
- the system or data product
- surrounding systems
- major relationships

---

## 3. Pipeline / Component Diagram
### Use when
You need to explain the main building blocks of the pipeline or solution.

### Best for
- engineering reviews
- architecture options
- understanding responsibilities between components

### Show
- major processing components
- orchestration or control points
- serving components
- key interactions

---

## 4. Ownership Map
### Use when
You need to clarify who owns meaning, implementation, or operations.

### Best for
- multi-team environments
- data product ownership discussions
- support model clarification

### Show
- assets or stages
- owners
- support / change responsibility boundaries

---

## 5. Lifecycle Diagram
### Use when
You need to explain stage evolution over time.

### Best for
- PoC to MVP to production journeys
- industrialization planning
- release and adoption thinking

### Show
- phases
- transitions
- gates or review points where relevant

---

## Selection guide
Use a data flow diagram for:
“How does the data move?”

Use a system context diagram for:
“What surrounds this solution and who interacts with it?”

Use a pipeline / component diagram for:
“How is the solution structured internally?”

Use an ownership map for:
“Who owns what?”

Use a lifecycle diagram for:
“How does this evolve over time?”