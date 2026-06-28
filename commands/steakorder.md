---
description: Requirements-elicitation gate. Asks one adaptive question at a time, screens each answer through four quality gates, and produces an ISO/IEC/IEEE 29148 SRS. Also regenerates a clean SRS from an existing requirements document.
argument-hint: "[what you want to build, or attach an existing SRS/spec]"
---

Invoke the `steakorder` skill (defined in SKILL.md) with the user's arguments: $ARGUMENTS

Run the gate as specified there: do NOT start building. Open with the dual entry point ("describe it, or upload an existing document"), then ask one adaptive question at a time, screen every answer through the four gates (Unambiguous · Verifiable · Complete · Consistent), and keep drilling across both phases (Discovery 1–8, Specification 9–13) until every area passes. Only then write the ISO/IEC/IEEE 29148 SRS to a Markdown file in the working directory, show it in the reply, and ask only whether anything needs changing. The deliverable is the document — do not proceed to implementation or build anything. If the user attached an existing requirements document, switch to document-intake mode: read it, show a coverage map, and ask only for the gaps.
