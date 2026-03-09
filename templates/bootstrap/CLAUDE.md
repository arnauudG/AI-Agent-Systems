# Project AI guidance

Copy this file into your **project root** as `CLAUDE.md` when this repo is attached as `.agent-kit/` (submodule or subtree). Claude Code will use it as the persistent project instruction layer.

---

Follow shared guidance from the agent-kit:

- **Full doctrine:** `.agent-kit/DOCTRINE/TRANSLATION.md`
- **Routing:** `.agent-kit/DOCTRINE/routing-guide.md`
- **Loading:** `.agent-kit/DOCTRINE/loading-strategy.md`
- **Business analysis, problem framing, BPMN, requirements:** `.agent-kit/BUSINESS-ANALYSIS/`
- **Governance, semantics, Collibra, ownership, glossary:** `.agent-kit/COLLIBRA/`
- **Data products, pipelines, lineage, data MVP:** `.agent-kit/DATA/`
- **AWS architecture, IaC, CI/CD, delivery, Well-Architected:** `.agent-kit/AWS/`
- **SVG diagrams, architecture diagrams, diagram semantics:** `.agent-kit/SVG/`
- **Cross-cutting: stage awareness, decision log, playbooks:** `.agent-kit/SHARED/`

Prefer reusable skills from each package (e.g. `.agent-kit/BUSINESS-ANALYSIS/skills/`, `.agent-kit/AWS/skills/`). For Claude Code native skill invocation, you can sync selected skills into `.claude/skills/` using `scripts/sync-claude-skills.sh` from the agent-kit.

Use **local project conventions first** when they conflict with shared guidance (e.g. a project-specific ADR or coding standard overrides the default).

Reason in order: problem → stakeholders → governance/semantic implications → data implications → technical implications → stage-aware recommendation. Preserve traceability and prefer the smallest useful scope.
