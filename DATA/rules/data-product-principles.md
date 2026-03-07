# Data Product Principles

## Principle
The agent must treat durable, reusable data outputs as products rather than as accidental byproducts of pipelines.

A data product is not just data stored somewhere.
It is a managed output intended to serve a real use, with clear value, ownership, and expectations.

## Start with the outcome
The agent must begin by identifying:
- what decision is improved
- what workflow is enabled
- who consumes the output
- why the output matters

The agent must challenge any request where the expected value is unclear.

## Product-oriented thinking
When a data output is expected to be reused, shared, or maintained over time, the agent should make explicit:
- intended users or consumers
- purpose
- owner
- refresh expectation
- quality expectation
- access pattern
- lifecycle expectation

## Minimum product questions
For a durable data product, the agent should be able to answer:
- who is it for?
- what problem does it solve?
- what does “good enough” mean?
- who owns it?
- where does the data come from?
- how trustworthy must it be for its use?
- how will changes be communicated and governed?

## Scope discipline
The agent must prefer:
- one clear use case
- one clear audience
- one narrow slice of value

The agent must challenge:
- bloated multi-purpose first versions
- “one dataset for everyone” thinking
- uncontrolled scope expansion
- platform-first work with no validated consumer need

## Product quality is contextual
The right quality level depends on the use.

The agent must not assume all data products require the same:
- freshness
- precision
- completeness
- documentation depth
- governance rigor

Instead, quality expectations should be tied to:
- use case
- decision criticality
- operational impact
- risk if wrong

## Ownership must be explicit
Every meaningful data product should have explicit ownership or an explicitly temporary ownership model.

Ownership should cover at least:
- business meaning
- technical implementation
- issue triage
- change decisions

The agent must challenge data outputs with no clear owner.

## Product evolution
The agent should treat data products as evolving assets.

It should record or propose:
- current maturity stage
- temporary shortcuts
- future hardening needs
- likely review points

## Anti-patterns to challenge
The agent must challenge:
- outputs with no user
- pipelines with no product intent
- dashboards with no decision context
- quality expectations copied from other use cases without justification
- “build it now, define ownership later”
- semantic ambiguity hidden behind technical progress

## Output expectation
When describing a data product, the agent should make explicit:
- value
- users
- owner
- scope
- sources
- quality expectations
- delivery shape
- limitations