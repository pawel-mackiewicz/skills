---
name: implement
description: Implement an agreed feature, fix, ticket, or prototype in the real application. Use when the user asks for working code, including turning an approved prototype into a functional screen. Follow existing app conventions and verify the completed behavior; use a design or planning skill when the behavior is still being explored.
---

# Implement

Turn the agreed behavior into working application code. Read the task and accepted decisions, then follow the instructions and patterns in each repository being changed.

## Integrate with the app

- Treat an approved prototype as a reference for behavior and appearance. Preserve the selected layout and review comments while using the app's existing components, visual language, accessibility standards, and architecture.
- Connect the real routes, authentication, data reads, and writes through the existing application and API contracts. Keep prototype fixtures, fixed example dates, debug controls, and auth bypasses out of production code.
- Handle loading, missing data, validation, failed reads and writes, and any confirmation required by the contract. Do not report success when a write or a required refresh fails; preserve the user's input when a request fails.

## UI requirements

- Use the app's existing internationalization system. Keep all user-facing text in translation dictionaries, including accessible labels, validation errors, status messages, notifications, and modal copy. Format displayed dates and times with the active locale; keep API date keys and business timezones unchanged. Store message keys or structured events so visible messages update when the locale changes.
- Put each modal or dialog in a separate component file with its own markup and styles. Keep page-level API calls and business state outside the modal; pass data and handle explicit events. Preserve keyboard interaction, focus trapping, and focus return.

## Verify and finish

- Verify the user-visible flow through the real app code. Use isolated API responses or test data when exercising writes. Check persistence after reload, failures, and required confirmation flows; for UI changes, also check keyboard use and responsive layouts.
- Add or update behavior tests where the change needs coverage, using the repository's style, and run the checks appropriate to the change. Update concise implementation docs and the task's status only when the behavior is complete.
- When committing is authorized, commit only the task's changes after the required checks pass. Use a one-line conventional commit message. Report what works, what was verified, and any remaining limitation.
