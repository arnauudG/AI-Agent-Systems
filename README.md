# AI System Configuration Management

A reusable multi-package repository for configuring AI agents that support business analysis, governance design, data product work, and AWS architecture/delivery.

This repository is designed as a modular decision-support system.

It helps agents and humans move from:

**business need → analysis → governance/semantics → data/product design → technical delivery**

rather than jumping straight into tools, tickets, or architecture diagrams like caffeinated raccoons.

---

## Purpose

This repository exists to make AI-assisted work:
- more structured
- more reusable
- more traceable
- more stage-aware
- more grounded in real delivery and operating constraints

It is not just a collection of prompts.
It is an operating system for how agents should reason across different domains.

---

## Supported tools

This repo provides entry points for Claude Code, Cursor, and Claude Desktop, all sharing a single doctrine:

| Tool | Entry point | Location |
|------|------------|----------|
| **Claude Code** | `CLAUDE.md` (root) | Root file, references `DOCTRINE/` |
| **Cursor** | `.cursor/rules/repo-doctrine.mdc` | Always-apply rule, references `DOCTRINE/` |
| **Claude Desktop** | `templates/claude-desktop/` | Paste-ready instructions + knowledge bundle |

All tool entry points reference `DOCTRINE/` as the single source of truth for routing, loading, reasoning order, and behavioral rules.

---

## Three consumption modes

### 1. Shared knowledge repo (standalone)

Use it as a reference or clone it: reusable guidance for Collibra, SVG, business analysis, architecture (AWS), data, prompts, playbooks, and examples. Browse packages, rules, skills, and templates directly.

**When you open this repo as the project:**
- **Claude Code** reads root `CLAUDE.md`, which points at `DOCTRINE/TRANSLATION.md` and the packages.
- **Cursor** loads `.cursor/rules/repo-doctrine.mdc` (always apply), which points at `DOCTRINE/TRANSLATION.md`.

### 2. Local attachment to work repos (recommended)

Attach this repo **inside** your real project so all tools see the files locally. Best option because agents are strongest when context is in the working repo.

**As a git submodule:**

```bash
git submodule add <this-repo-url> .agent-kit
```

Or use a subtree if you prefer. Then add the bootstrap files to your project (see below).

### 3. Native tool-specific overlays

- **Claude Code:** Put the bootstrap `CLAUDE.md` in your project root so Claude follows shared guidance from `.agent-kit/`.
- **Cursor:** Put `agent-kit.mdc` in your project's `.cursor/rules/`.

**Layers together:** Local project context (your codebase) + shared agent-kit (`.agent-kit/`) + live systems via MCP (Collibra, GitHub, Jira, etc.) when needed. Stable patterns live in the repo; live truth comes from MCP.

---

## Bootstrap files for working repos

When you attach this repo as `.agent-kit/` in a project:

1. **For Claude Code:** Copy or symlink into your project root as `CLAUDE.md`:
   - Source: [templates/bootstrap/CLAUDE.md](templates/bootstrap/CLAUDE.md)

2. **For Cursor:** Copy into your project's `.cursor/rules/`:
   - Source: [templates/bootstrap/agent-kit.mdc](templates/bootstrap/agent-kit.mdc)

3. **For Claude Desktop:** Paste the project instructions or upload the knowledge bundle:
   - Instructions: [templates/claude-desktop/project-instructions.md](templates/claude-desktop/project-instructions.md)
   - Knowledge: [templates/claude-desktop/knowledge-bundle.md](templates/claude-desktop/knowledge-bundle.md)

4. **Optional sync scripts:** To mirror skills or rules into tool-native paths, use the scripts in `scripts/` — see [scripts/README.md](scripts/README.md).

---

## Repository philosophy

### 1. Start from the problem
Do not start from tools, platforms, or implementation patterns before understanding the actual problem.

### 2. Separate layers of reasoning
A business problem, a governance implication, a data implication, and a technical design are related — but they are not the same thing.

### 3. Use the right specialist package
Not every problem should be solved in the same package.
This repository is deliberately modular.

### 4. Prefer value over ceremonial complexity
The goal is not to produce bigger documents.
The goal is to improve clarity, design quality, and implementation realism.

### 5. Preserve traceability
Important decisions, assumptions, scope choices, and trade-offs should remain visible.

### 6. Think visually when useful
If a diagram helps explain the problem, the structure, the flow, or the ownership model, the agent should create one.

---

## Repository structure

### Root files
- `AGENTS.md` — top-level orchestration doctrine for the whole system
- `README.md` — top-level explanation of how the system works
- `CLAUDE.md` — Claude Code entry point

### `DOCTRINE/`
Shared operating doctrine — single source of truth for all tools:
- **`TRANSLATION.md`** — self-contained briefing (package map, routing, loading, rules)
- `routing-guide.md` — which package leads for which request
- `loading-strategy.md` — smallest relevant context sets
- `quick-start-prompts.md` — reusable prompt templates
- `repo-rules.md` — compact behavioral rules

### `GOVERNANCE/`
Repository-governance artifacts for maintaining this system over time:
- contribution guidance
- review criteria for repo changes
- versioning rules
- changelog discipline
- package evolution ADR templates

### `.cursor/rules/`
Cursor entry point (`repo-doctrine.mdc`, always-apply) when this repo is used standalone.

### `templates/`
Bootstrap files for working repos that attach this repo as `.agent-kit/`:
- `bootstrap/CLAUDE.md` — Claude Code bootstrap
- `bootstrap/agent-kit.mdc` — Cursor bootstrap
- `claude-desktop/project-instructions.md` — Claude Desktop paste-ready instructions
- `claude-desktop/knowledge-bundle.md` — Claude Desktop knowledge upload

### `scripts/`
Sync scripts for agent-kit consumption mode.

### `SHARED/`
Cross-cutting principles that apply across all packages:
- common operating principles
- stage awareness
- decision logging
- visual thinking
- implementation pragmatism

### `SHARED/playbooks/`
Scenario-based orchestration guides showing how packages work together.

### `BUSINESS-ANALYSIS/`
Use this package when the main need is:
- clarifying the business problem
- defining stakeholders and capabilities
- deriving use cases
- shaping requirements
- defining MVP scope
- modeling business processes

### `COLLIBRA/`
Use this package when the main need is:
- clarifying concepts and semantics
- defining ownership and accountability
- designing governance artifacts
- translating business meaning into Collibra structures
- linking governance to technical assets

### `DATA/`
Use this package when the main need is:
- defining a data product
- shaping a data MVP
- designing data flows or pipelines
- making quality and ownership explicit
- managing the data lifecycle

### `AWS/`
Use this package when the main need is:
- designing technical architecture
- evaluating AWS implementation options
- reviewing IaC or CI/CD
- applying Well-Architected and delivery rigor
- preparing for production

### `SVG/`
Use this package when the main need is:
- creating or editing architecture diagrams, platform diagrams, or semantic visuals in SVG
- keeping diagram structure consistent, legible, and editable
- representing ownership, trust boundaries, access flows, or security architecture in diagrams
- refactoring or simplifying existing SVG for maintainability

---

## Package selection logic

### Start with `BUSINESS-ANALYSIS/` when:
- the request is vague
- the problem is not yet clear
- the scope is contested
- stakeholders disagree
- process or capability understanding is missing

### Start with `COLLIBRA/` when:
- terms are ambiguous
- governance or ownership is central
- the problem is semantic, policy-oriented, or accountability-related
- business meaning must connect to metadata structures

### Start with `DATA/` when:
- the output is a data product, dataset, metric layer, or analytics capability
- the main concern is sources, transformations, quality, lineage, or serving

### Start with `AWS/` when:
- the business need is already well understood
- the implementation direction is mainly technical
- delivery architecture, infrastructure, or DevOps rigor is central

### Start with `SVG/` when:
- the task is to produce or edit SVG diagrams (architecture, platform, process, governance)
- diagram output must be readable, semantically structured, and safe to edit manually
- ownership, trust boundaries, or access patterns need to be represented accurately in visuals

---

## End-to-end flow

A typical end-to-end path looks like this:

1. `BUSINESS-ANALYSIS/`
   - frame the problem
   - identify stakeholders
   - derive use cases
   - define MVP scope

2. `COLLIBRA/`
   - clarify concepts
   - define ownership
   - map governance artifacts
   - design governance workflows if needed

3. `DATA/`
   - define data product implications
   - design pipeline or analytics flow
   - define quality and lineage expectations

4. `AWS/`
   - define technical architecture
   - define deployment and operational patterns
   - apply delivery and production rigor

Not every initiative needs all four packages.

---

## Example scenario patterns

### Business problem to governance use case
Use:
- `BUSINESS-ANALYSIS/`
- `COLLIBRA/`

### Business problem to data MVP
Use:
- `BUSINESS-ANALYSIS/`
- `DATA/`

### Governance-led data initiative
Use:
- `BUSINESS-ANALYSIS/`
- `COLLIBRA/`
- `DATA/`

### End-to-end product delivery on AWS
Use:
- `BUSINESS-ANALYSIS/`
- `DATA/`
- `AWS/`

### Architecture or platform diagrams (SVG)
Use:
- `SVG/` (and optionally `AWS/` for architecture content, `COLLIBRA/` for semantic/governance visuals)

### Metadata/governance-driven operating model initiative
Use:
- `BUSINESS-ANALYSIS/`
- `COLLIBRA/`
- optionally `DATA/`

---

## Recommended maintenance model

- keep packages modular
- keep `GOVERNANCE/` focused on repo evolution rather than domain content
- keep `DOCTRINE/` focused on shared operating model; do not duplicate package logic
- keep tool entry points thin — they reference `DOCTRINE/`, not restate it
- keep `SHARED/` small and cross-cutting
- keep `SVG/` focused on structure, semantics, and editability (not tool-specific export formats)
- add new rules only when they are broadly reusable
- add new skills only for repeated tasks
- add new playbooks when multiple packages must be orchestrated together
- record major design changes using decision logs
- record meaningful repo-structure changes in `GOVERNANCE/CHANGELOG.md`

---

## Warning

This repository is a reasoning system, not a substitute for judgment.

It should make AI agents and humans more disciplined, not more verbose.
It should reduce confusion, not produce prettier confusion.
