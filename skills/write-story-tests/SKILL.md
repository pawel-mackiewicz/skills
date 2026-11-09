---
name: write-story-tests
description: Write or revise repository tests so each test states a clear business rule and reads as a short story. Use when adding tests or improving test names, setup, assertions, and comments.
---

# Write Story Tests

Start with the behavior the user cares about. Write one sentence for the rule before choosing test data. Check the code or contract so the test describes the behavior it actually exercises.

## Tell the story

- Name the test for the observable business outcome, using simple words.
- Arrange it as setup, action, and result. Let a reader follow what happened without decoding fixtures or implementation details.
- Use concrete values and make units, dates, and timezones clear when they affect the result.
- Assert the result that proves the rule. For a rejected write, also check that the relevant saved state did not change.

## Explain why, precisely

- Add a short docstring for the business reason when the test name alone does not explain it. Add comments only for a non-obvious setup step, decision, or consequence. Do not repeat the next assertion in prose.
- Say exactly what the code returns or changes. A date in `appointment_review_dates` **flags a date**; it does not **show an appointment** or start a review process. Use similarly precise wording for other APIs.
- Do not claim the test covers migration, a UI, or another process unless it actually runs that process.
- If a reader questions what a phrase means, replace it with the concrete actor, data, and outcome. Avoid vague phrases such as "for review" without saying what is flagged and why.

Read the finished test once as a newcomer. If its rule is unclear, simplify the setup or split unrelated behaviors before adding more explanation.
