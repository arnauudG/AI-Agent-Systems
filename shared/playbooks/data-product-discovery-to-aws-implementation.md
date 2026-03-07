# Playbook: Data Product Discovery to AWS Implementation

## Use when
Use this playbook when a business need is likely to result in:
- a reusable dataset
- a metric or semantic layer
- an analytics product
- a data-serving capability
and must eventually be implemented on AWS.

## Lead packages
- BUSINESS-ANALYSIS
- DATA

## Supporting package
- AWS

## Optional supporting package
- COLLIBRA, if governance semantics, ownership, or catalog linkage matter

## Core objective
Move from business need to a data MVP and then to a technically credible AWS implementation path.

## Suggested sequence

### 1. Frame the business problem
Use:
- `BUSINESS-ANALYSIS/`

Clarify:
- what decision or workflow improves
- who the consumer is
- what outcome matters first
- what MVP scope is acceptable

### 2. Define the data product logic
Use:
- `DATA/`

Clarify:
- what the product output is
- which sources matter
- what transformations are needed
- what ownership and quality expectations exist
- what is acceptable for MVP

### 3. Identify governance or semantic needs if relevant
Use:
- `COLLIBRA/` if needed

Clarify:
- what business terms must be explicit
- whether ownership/stewardship should be modeled
- whether the product should be linked to glossary, policies, or catalog structures

### 4. Translate to AWS options
Use:
- `AWS/`

Clarify:
- architecture options
- delivery pattern
- managed service preference
- operational expectations
- observability and rollback logic
- production-hardening path

## Typical outputs
- business problem and MVP scope
- data product canvas
- data solution design
- data flow diagram
- AWS solution recommendation
- phased delivery plan

## Common anti-patterns
- building the pipeline before defining the product
- serving multiple audiences too early
- overengineering around hypothetical scale
- treating AWS service choice as the first question
- hiding ownership gaps behind technical progress

## Recommended diagrams
- translation chain diagram
- data flow diagram
- AWS architecture diagram
- MVP phase diagram

## Recommended decision logs
Record:
- MVP output choice
- source selection
- accepted quality limits
- selected AWS implementation direction
- what must change before production