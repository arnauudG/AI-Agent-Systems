# Playbook: DQ + DIC/DC Integration Initiative

## Use when
Use this playbook when integrating data quality outputs with catalog, governance, or data consumption experiences.

Typical examples:
- surfacing DQ results in catalog pages
- mapping DQ assets to catalog assets
- connecting trust signals to discoverability
- aligning DQ, DIC, and governance models

## Lead packages
- BUSINESS-ANALYSIS
- DATA
- COLLIBRA

## Supporting package
- AWS, if integration architecture or platform delivery matters

## Core objective
Make quality evidence usable in context — not as isolated technical artifacts, but as decision support embedded into catalog/governance experiences.

## Suggested sequence

### 1. Frame the user and trust problem
Use:
- `BUSINESS-ANALYSIS/`

Clarify:
- who needs DQ signals
- what decision or action should improve
- where the current gap exists
- what trust means in context

### 2. Clarify data and quality logic
Use:
- `DATA/`

Clarify:
- what quality outputs exist
- what entities are being scored or checked
- what mapping challenges exist
- what quality interpretation is meaningful to users

### 3. Clarify governance and Collibra implications
Use:
- `COLLIBRA/`

Clarify:
- what assets should carry trust signals
- how ownership and semantics align
- how DQ-related artifacts should connect to catalog/governance structures
- what should be modeled versus merely referenced

### 4. Clarify technical integration and delivery path
Use:
- `AWS/` if relevant

Clarify:
- integration architecture
- push/pull/update mechanisms
- operational dependencies
- security and support implications
- rollout phases

## Typical outputs
- trust/problem framing
- DQ-to-catalog mapping logic
- ownership and semantic alignment notes
- integration design options
- MVP scope for surfacing signals

## Common anti-patterns
- surfacing scores without explaining meaning
- mapping assets with weak semantic alignment
- exposing DQ outputs that users cannot interpret or act on
- treating DQ as separate from discoverability and ownership
- designing the technical integration before defining the user value

## Recommended diagrams
- trust signal flow diagram
- asset mapping diagram
- ownership map
- integration architecture diagram

## Recommended decision logs
Record:
- trust signal semantics
- mapping logic choices
- ownership model
- MVP surfacing scope
- technical integration trade-offs