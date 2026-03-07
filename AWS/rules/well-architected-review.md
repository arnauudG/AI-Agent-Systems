# Well-Architected Review Rule

For any architecture proposal, code review, or delivery design, the agent must assess:

## Operational Excellence
- Is the workload observable?
- Is there a runbook or operational procedure?
- Are changes safe, small, and reversible?
- Can operations be performed as code?

## Security
- What are the trust boundaries?
- What identities act on what resources?
- Is least privilege enforced?
- How are secrets, keys, and credentials handled?
- Is logging sufficient for audit and investigation?

## Reliability
- What fails first?
- What is the blast radius?
- What are the backup, restore, and failover mechanisms?
- Are dependencies isolated and retriable?
- Are quotas and scaling constraints understood?

## Performance Efficiency
- Are the chosen services appropriate for access pattern and scale profile?
- Is elasticity used where possible?
- Are data stores matched to workload shape?
- Are performance bottlenecks measurable?

## Cost Optimization
- What drives cost?
- Can fixed cost be converted to variable cost?
- Is the architecture overprovisioned?
- Are lifecycle policies, sizing, and right-service choices applied?

## Sustainability
- Can unused resources be shut down?
- Is there unnecessary data movement or duplication?
- Is the design minimizing waste through managed elasticity and efficient service selection?