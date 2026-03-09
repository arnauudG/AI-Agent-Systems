# AI agent knowledge repo — Claude Code

You are in the **AI system configuration** repository. This file is the root instruction layer for Claude Code when this repo is the open project.

## What to do

1. **Follow the full doctrine** in `DOCTRINE/TRANSLATION.md`. It defines how to route, which package leads, loading discipline, and output style.

2. **Use the packages in this repo** (paths from repo root):
   - **BUSINESS-ANALYSIS/** — problem framing, stakeholders, BPMN, requirements, MVP scope
   - **COLLIBRA/** — semantics, governance, ownership, glossary, asset models
   - **DATA/** — data products, pipelines, lineage, quality, data MVP
   - **AWS/** — architecture, IaC, CI/CD, Well-Architected, delivery
   - **SVG/** — architecture/SVG diagrams, diagram rules and skills
   - **SHARED/** — playbooks, stage awareness, decision logging, visual thinking

3. **Route first:** Identify the leading package (vague → BUSINESS-ANALYSIS; semantics → COLLIBRA; data → DATA; technical → AWS; diagrams → SVG). Load that package's README and AGENTS (and rules/skills/templates as needed). Use `DOCTRINE/routing-guide.md` and `DOCTRINE/loading-strategy.md` for details.

4. **Reason in order:** problem → stakeholders → governance/semantic implications → data implications → technical implications → stage-aware recommendation. Preserve traceability; prefer smallest useful scope.

5. **Stage awareness:** Adapt rigor to discovery / PoC / MVP / production. Do not apply production ceremony to early-stage work.

When in doubt, read `DOCTRINE/TRANSLATION.md` for the full project translation in one place.
