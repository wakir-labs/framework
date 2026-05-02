# Contributing to the Wakir Framework

Thanks for considering a contribution.

## Design principles you must respect

### 1. Humans are first-class roles

The framework treats humans and AI agents as instances of the same
abstraction: a **Role**. A pull request that hardcodes "AI-only" or
"human-only" code paths into a kernel primitive will be rejected.
If you need an asymmetry, surface it as a property on the Role, not as
a branch in the dispatcher.

### 2. Audit-trail is non-negotiable

Every state transition in a kernel primitive (Role, Task, Routing,
Boundary) must emit an event that is sufficient to reconstruct the
transition without reading the runtime memory. PRs that add silent
state changes will be rejected.

This is not a logging convenience. It is the property that lets
operators (human or otherwise) trust the framework. See ADR-0007 in
the Wakir Labs governance repo for the company-internal rationale.

### 3. Boring tech, small surface

Phase 1 ships kernel primitives only. New optional dependencies need a
short justification in the PR description. Defaults must work with the
Python and Node versions pinned in `.tool-versions` (forthcoming).

## How to submit

1. Open an issue first for anything larger than a one-line fix.
2. Branch from `main`. Keep PRs focused.
3. Include tests for changes that touch primitive semantics.
4. Sign-off your commits (`git commit -s`).

## License

By contributing, you agree your contribution is licensed under
Apache 2.0, matching the project license.
