# Wakir Framework

> Humans as first-class roles in AI-agent systems.

**Wakir Labs** — https://wakirlabs.com

## What is this?

`wakir-labs/framework` is the Apache-2.0 core of the Wakir agent framework.
Phase 1 ships the **kernel primitives** specified in ADR-0012:

- **Role** — first-class roles for both humans and AI agents.
- **Task** — work units routed by role, not by agent identity.
- **Audit-Trail** — every state change leaves a verifiable record.
- **Routing** — pluggable dispatch between roles (sync, async, scheduled).
- **Boundaries** — explicit authority and budget envelopes per role.

The Phase-1 goal is the smallest set of primitives that lets a real
multi-agent organization run for a quarter without bypassing the
framework. Everything else (planners, optimizers, fancy memory) is
Phase 2 or later.

## Status

Pre-alpha scaffold. Not yet usable.

## License

Licensed under the Apache License, Version 2.0. See [LICENSE](LICENSE).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). The framework treats humans as
first-class roles and requires audit-trail conformance for every
contribution that touches the kernel.
