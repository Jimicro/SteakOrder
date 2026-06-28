# Changelog

All notable changes to this project are documented here.
The format follows [Keep a Changelog](https://keepachangelog.com/), and this
project adheres to [Semantic Versioning](https://semver.org/).

> 한국어: [CHANGELOG.ko.md](CHANGELOG.ko.md)

## [0.1.0] — 2026-06-28

- Initial public release of **steakorder**, an adaptive requirements-elicitation gate.
- Two-phase elicitation: Discovery (areas 1–8) and Specification (areas 9–13).
- Four conversational quality gates (Unambiguous · Verifiable · Complete · Consistent),
  plus ISO/IEC/IEEE 29148 well-formed criteria for finalized requirements.
- ISO/IEC/IEEE 29148 SRS output with component grouping, weighted priority,
  ACD / use-case Mermaid diagrams, verification methods, and a traceability table.
- Document-intake (regeneration) mode: read an existing requirements document,
  show a coverage map, ask only for the gaps, and produce a clean new SRS.
- Claude Code plugin packaging (`.claude-plugin/`) and `/steakorder` command.
- `.skill` bundle build script and tagged-release workflow.
