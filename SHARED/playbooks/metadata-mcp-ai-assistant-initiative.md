# Playbook: Metadata / MCP / AI Assistant Initiative

## Use when
Use this playbook when building an AI assistant, MCP-enabled tool, or metadata-driven experience that uses business, governance, or technical metadata to help users discover, understand, or act.

Typical examples:
- Collibra MCP assistant
- metadata search assistant
- governance-aware copilots
- DQ evidence assistants
- architecture/guidance assistants using platform metadata

## Lead packages
- BUSINESS-ANALYSIS
- COLLIBRA

## Supporting packages
- DATA
- AWS

## Core objective
Translate assistant ambition into a grounded use case with:
- a real user problem
- trustworthy metadata inputs
- clear semantic boundaries
- realistic delivery path
- controlled scope

## Suggested sequence

### 1. Frame user problem and assistant value
Use:
- `BUSINESS-ANALYSIS/`

Clarify:
- who the assistant helps
- what task or pain it improves
- what “good” looks like
- what the first MVP interaction should be

### 2. Clarify semantic and governance context
Use:
- `COLLIBRA/`

Clarify:
- what concepts the assistant must understand
- what governed metadata matters
- what ownership and trust boundaries exist
- what should and should not be surfaced

### 3. Clarify metadata/data implications
Use:
- `DATA/`

Clarify:
- what metadata or quality signals are inputs
- what retrieval structures are needed
- what lineage, trust, or evidence patterns matter
- what output reliability is acceptable

### 4. Clarify AWS / platform implementation
Use:
- `AWS/`

Clarify:
- access patterns
- runtime components
- observability
- security and permission boundaries
- MVP vs production deployment path

## Typical outputs
- assistant use case statement
- MVP interaction scope
- semantic mapping
- metadata input map
- architecture options
- trust and boundary notes

## Common anti-patterns
- building an assistant with no sharp user problem
- exposing metadata without semantic clarity
- assuming metadata quality is already good enough
- trying to solve all discovery/governance problems in version one
- overbuilding orchestration before validating value

## Recommended diagrams
- user interaction flow
- metadata source map
- business-to-metadata-to-technical translation diagram
- runtime architecture diagram

## Recommended decision logs
Record:
- first-user problem
- metadata scope included/excluded
- trust assumptions
- MVP boundaries
- delivery and security trade-offs