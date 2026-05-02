# Wakir Labs — Framework

> Accountable multi-agent systems, a framework for AI-first organizations.

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)

`wakir-labs/framework` is the Apache-2.0 core of the Wakir agent
framework. Most multi-agent frameworks treat humans as an emergency
exit — a fallback when the agents get confused. We design the other
way around. People are first-class roles in the workflow, with their
own primitives for approval, hand-off, and audit. The Arabic word
*wakīl* (وكيل) means "an appointed representative, an agent in the
legal sense": someone is named, someone is accountable, and the
relationship is documented. That is the standard the framework holds
itself to.

The framework gives you a small, opinionated set of primitives — Role,
Task, Routing, Boundary, and an audit-event stream — that lets you
wire humans and AI agents into the same workflow without writing a
custom approval pipeline for every project. Identity is signed and
verifiable. Hand-offs are typed. The audit trail is part of the
architecture, not bolted-on logging. The Phase-1 scope is the smallest
set of primitives that lets a real multi-agent organization run for a
quarter without bypassing the framework.

The core is licensed under Apache 2.0. Operational and compliance
modules sit on top under BSL with an automatic four-year convert to
Apache 2.0. We publish what we learn as we build it; the canonical
home is [wakirlabs.com](https://wakirlabs.com).

## Status

Phase 1 — early. Kernel primitives in design. Not yet usable as a
dependency. We are not pretending otherwise.

## License

Licensed under the Apache License, Version 2.0. See [LICENSE](LICENSE).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Pronounced *Wa-keer Labs* in
English, *Wa-kir Labs* auf Deutsch.
