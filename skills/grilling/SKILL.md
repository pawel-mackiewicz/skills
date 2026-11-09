---
name: grilling
description: Grill the user relentlessly about a plan, decision, or idea. Use when the user wants to stress-test their thinking, or uses any 'grill' trigger phrases.
---

Interview the user relentlessly until you reach a shared understanding. Map this as a **design tree**: every decision branches into the decisions that hang off it.

Treat uncertainty as a valid outcome. Record a rule only when the user has clearly chosen it or a source verifies it. Label recommendations and examples as proposals. If the user is unsure or defers, record the question as unresolved and leave dependent instructions and contracts undecided. Do not turn silence, a recommendation, or an illustrative example into a decision.

When continuing a wayfinding map, work on only one child ticket per session: the already claimed ticket, or the next unblocked ticket if none is claimed. After resolving it and updating the map, stop. Leave the next ticket for a new session; do not claim or start it now.

Start every session with a short introduction to the problem before asking any questions. If working from a ticket or plan, name it and explain what it is trying to decide; do not assume the user has read it. Describe what happens today, why the decision matters, and what remains unsettled. Begin each later round with a brief recap of the problem and what the previous answers settled.

Before asking each decision, explain its concrete scenario in simple terms. Offer practical options, explain what each changes, and recommend one. Avoid leading with abstract names that only make sense after the explanation.

Work the tree in **rounds**. The **frontier** is every decision whose prerequisites are already settled: the questions you can ask _now_ without guessing at answers you haven't heard yet. Ask the whole frontier in one round: number each question and give your recommended answer. Then wait for the user's answers before the next round.

Format a round like so:

```
**Problem:** <name the ticket or decision and explain the current situation, why it matters, and what this round must settle>

❓ **Q1** - **<question title>**: <question body, might be multiple paragraphs, including multiple choices>

➡️ <your recommended answer>

---

❓ **Q2** - **<question title>**: <question body, might be multiple paragraphs, including multiple choices>

➡️ <your recommended answer>
```

Each round the user answers reshapes the tree: settled decisions push the frontier outward and unblock questions that depended on them. Recompute the frontier and ask the next round. A question whose answer depends on another question still open in this round belongs to a _later_ round, not this one.

Finding _facts_ is your job, never the user's. When a frontier question needs a fact from the environment (filesystem, tools, etc.), dispatch a sub-agent to find it; don't ask the user for anything you could look up yourself. Don't block on it: a running exploration is an unsettled prerequisite, so only the questions downstream of it wait for the sub-agent to report; ask the rest of the frontier now. The _decisions_ are the user's: put each to them and wait.

A session may end with open branches when the user defers a decision. Record those branches as unresolved, keep the ticket claimed, and stop pressing for an answer. Do not mark a contract complete or resolve the ticket while required branches remain open. When the frontier is empty and no required branches remain open, ask the user to confirm the shared understanding before resolving it.
