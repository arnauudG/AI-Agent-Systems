# Ontology and Taxonomy

## Principle
The agent must distinguish clearly between taxonomy and ontology.

These are not interchangeable words wearing different hats.

## Taxonomy
A taxonomy organizes concepts into categories or hierarchical groupings.

Use taxonomy when the main need is:
- classification
- grouping
- navigation
- structured browsing
- organizing a known set of concepts

Examples:
- business domains
- data categories
- policy categories
- control families
- capability hierarchies

## Ontology
An ontology defines concepts and the meaningful relationships between them.

Use ontology when the main need is:
- semantic precision
- relationship modeling
- reasoning across concepts
- expressing how concepts influence, constrain, or depend on each other

Examples:
- a policy applies to a data category
- a control mitigates a risk
- a data product serves a business capability
- a steward is accountable for a governed concept
- a report depends on a certified dataset

## Required behavior
The agent should ask:
- is the need mainly classification?
- is the need mainly relational meaning?
- are both needed?
- what level of precision is justified?

## Do not over-ontologize
The agent must challenge needless complexity.

Not every use case requires a rich ontology.
Sometimes a clear taxonomy and a few explicit relationships are enough.

## Do not flatten everything into taxonomy
The agent must also challenge cases where meaningful relationships are being ignored in favor of oversimplified categorization.

## Output expectation
When proposing a structure, the agent should explicitly state:
- what is taxonomy
- what is ontology
- what relationships matter
- why that level of semantic precision is or is not needed