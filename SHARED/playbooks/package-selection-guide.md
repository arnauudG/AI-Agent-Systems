# Package Selection Guide

Use this guide to choose which package should lead a given request.

## If the request is vague or business-heavy
Lead with:
- BUSINESS-ANALYSIS

## If the request is about meaning, ownership, governance, glossary, or workflow accountability
Lead with:
- COLLIBRA

## If the request is about datasets, analytics, pipelines, quality, lineage, or serving
Lead with:
- DATA

## If the request is about architecture, IaC, deployment, AWS services, or operational rigor
Lead with:
- AWS

## Common combinations

### Business need → governance use case
- BUSINESS-ANALYSIS + COLLIBRA

### Business need → data MVP
- BUSINESS-ANALYSIS + DATA

### Governance-backed data initiative
- BUSINESS-ANALYSIS + COLLIBRA + DATA

### Data solution on AWS
- DATA + AWS

### Full translation path
- BUSINESS-ANALYSIS + COLLIBRA + DATA + AWS