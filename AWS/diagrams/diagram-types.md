# Diagram Types

Use the right diagram for the right question.

## 1. System Context Diagram
### Use when
You need to explain:
- what the system is
- who interacts with it
- what external systems it depends on

### Best for
- stakeholder alignment
- executive / product discussions
- early-stage architecture communication
- PoC / MVP framing

### Show
- users / actors
- the system
- external systems
- major inbound and outbound relationships

### Avoid
- too much implementation detail
- low-level AWS internals

---

## 2. Container / Component Diagram
### Use when
You need to explain the main building blocks of the system.

### Best for
- architecture design reviews
- solution decomposition
- service interaction review
- identifying responsibilities

### Show
- main services / components
- interactions between them
- major data stores
- major control paths

### Avoid
- mixing runtime topology with too much business process detail

---

## 3. Data Flow Diagram
### Use when
You need to explain how data moves through the system.

### Best for
- data platform work
- ingestion/transformation/consumption flows
- lineage conversations
- privacy / security review
- integration review

### Show
- sources
- transformations
- sinks / consumers
- storage stages
- boundaries where relevant

### Avoid
- turning it into a generic network diagram

---

## 4. Sequence Diagram
### Use when
You need to explain an interaction over time.

### Best for
- request flows
- orchestration logic
- auth sequences
- async behavior
- integration scenarios
- troubleshooting tricky flows

### Show
- actors/components
- order of interactions
- synchronous / asynchronous exchanges
- important conditional branches if needed

### Avoid
- excessive implementation detail that obscures timing and flow

---

## 5. Deployment Diagram
### Use when
You need to explain where things run and how they are deployed.

### Best for
- environment topology
- AWS account / VPC / subnet views
- runtime placement
- production readiness review
- network boundary clarification

### Show
- environments
- AWS services or hosts
- major network boundaries
- high-level placement of workloads

### Avoid
- mixing it with business process explanation

---

## 6. Responsibility / Ownership Map
### Use when
You need to clarify who owns what.

### Best for
- platform vs application team discussions
- ops ownership
- support model clarification
- multi-team environments

### Show
- services or domains
- ownership boundaries
- support / escalation relationships

### Avoid
- using this instead of a proper architecture diagram when technical structure is the real issue

---

## 7. Lifecycle Diagram
### Use when
You need to explain stages or transitions.

### Best for
- SDLC
- release flow
- migration phases
- incident process
- data product lifecycle

### Show
- stages
- key transitions
- gates / approvals / feedback loops if relevant

### Avoid
- overloading each phase with too much detail

---

## Selection guide
### Use a system context diagram if the question is:
“What is this system and what surrounds it?”

### Use a container/component diagram if the question is:
“How is this system structured?”

### Use a data flow diagram if the question is:
“How does the data move?”

### Use a sequence diagram if the question is:
“What happens step by step?”

### Use a deployment diagram if the question is:
“Where does this run and what are the boundaries?”

### Use a responsibility map if the question is:
“Who owns or operates what?”

### Use a lifecycle diagram if the question is:
“How does this evolve across stages or phases?”