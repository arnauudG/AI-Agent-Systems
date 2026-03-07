# Security Baseline

## Identity and access
- Use IAM roles instead of long-lived credentials.
- Enforce least privilege.
- Separate human access from workload access.
- Prefer federation and short-lived sessions.

## Data protection
- Encrypt data at rest and in transit.
- Use managed secrets storage.
- Classify sensitive data flows.
- Minimize data exposure in logs and telemetry.

## Network and boundary design
- Define ingress and egress paths explicitly.
- Limit public exposure.
- Prefer private connectivity for service-to-service communication when justified.

## Detection and traceability
- Enable centralized logging and monitoring.
- Ensure security-relevant events are retained and searchable.
- Make ownership of alerts and incident response explicit.