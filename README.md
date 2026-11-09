# Skills

Reusable engineering skills for software projects. Keep one copy here and link each
skill into your user skills directory so it is available across repositories.

## Install

Clone this repository to a stable location, then run:

```sh
./scripts/install.sh
```

The script creates a symlink for each folder in `skills/` under
`$HOME/.agents/skills/`. It is safe to run again. If a destination already contains
a different skill or link, the script stops before adding any links.

To use a different skills directory:

```sh
./scripts/install.sh /absolute/path/to/skills
```

Keep the clone in place: the links point to its folders. After updating the clone,
existing links use the updated files. Run the installer again to link new skills.
If Codex does not show a skill after installation, restart it.

## Skills

| Skill | Purpose |
| --- | --- |
| `building-pydantic-ai-agents` | Build agents with Pydantic AI. |
| `domain-modeling` | Keep domain terms and decisions clear. |
| `grill-with-docs` | Stress-test a design and record its domain decisions. |
| `grilling` | Work through a plan's open decisions. |
| `implement` | Turn agreed behavior into working application code. |
| `prototype` | Explore a design question with a throwaway prototype. |
| `research` | Investigate primary sources and save the findings. |
| `setup-matt-pocock-skills` | Set up a project's issue tracker and domain docs. |
| `to-spec` | Turn agreed decisions into a specification. |
| `to-tickets` | Split a specification into implementation tickets. |
| `wayfinder` | Map a large effort into decision tickets. |
| `write-story-tests` | Write tests around clear business rules. |

## Project settings

Keep project rules in each application's `AGENTS.md`. Issue-tracker and domain
settings also stay with the application, for example in
`docs/agents/issue-tracker.md` and `docs/agents/domain.md`. These paths refer to the
project being worked on, not this skills repository.

Edit reusable skill instructions and their supporting files here. Preserve each
skill's invocation policy in `agents/openai.yaml` when moving or updating it.

## Origin

The initial skills were extracted from `zentra-codes/vesper-booking-be` at commit
`f3e32b7`. Existing skill instructions, supporting files, and metadata are kept
together.

See the [official skill documentation](https://learn.chatgpt.com/docs/build-skills#where-codex-loads-local-skills)
for local discovery and symlink support.

Thanks to [Matt Pocock](https://github.com/mattpocock/skills) for the original skills adapted here.

Licensed under [MIT](LICENSE).
