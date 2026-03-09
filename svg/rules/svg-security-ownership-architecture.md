# SVG Security and Ownership Architecture Rules

## Goal
Represent ownership and access patterns faithfully in architecture diagrams.

## Rules
- Show ownership boundaries explicitly.
- Do not visually imply central ownership when access is federated.
- Distinguish "owns secret" from "can read secret".
- Cross-account or cross-boundary access must be directional and labeled.
- Resource-based access should be shown as permission granted by the owning domain, not as central ingestion or transfer.
- Avoid diagrams that suggest secrets are copied into a catalog-owned location unless that is truly the design.

## Preferred representation
- Each domain team account/path contains its own secrets.
- The Edge execution role is shown separately.
- Arrows indicate read access, not secret relocation.
- Resource policy or equivalent access grant is called out explicitly.
