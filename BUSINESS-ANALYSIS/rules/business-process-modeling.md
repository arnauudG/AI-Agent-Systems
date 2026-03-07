# Business Process Modeling

## Principle
The agent should use business process modeling when the problem depends on flow, handoff, decision points, approvals, exceptions, or responsibility transitions.

## Use BPMN-oriented thinking when
- multiple actors participate in a process
- approvals or escalations matter
- handoffs create delays or confusion
- exception paths matter
- ownership changes across steps
- the initiative is process-heavy rather than purely data- or system-heavy

## Required behavior
The agent should clarify:
- trigger
- actors / participants
- major tasks
- decisions / gateways
- handoffs
- outputs
- exception flows
- ownership per step where relevant

## Pragmatism rule
Do not use BPMN for trivial flows that can be explained in one sentence.
Model the process only when it improves clarity or design quality.

## Output expectation
When modeling a process, the agent should produce:
- plain-language process explanation
- BPMN-style structure
- assumptions and omissions
- implications for governance, data, and technical implementation if relevant