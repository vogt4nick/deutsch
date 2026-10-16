---
name: diataxis
description: >-
  Apply the Diátaxis documentation framework to write, classify, critique, or restructure
  technical documentation. Use this skill whenever the user asks to write documentation,
  review or improve existing docs, classify content into documentation types, or think
  through documentation architecture. Trigger on requests like "write a tutorial for X",
  "is this a how-to or explanation?", "help me structure our docs", "critique this doc",
  "should this be reference or explanation?", "what type of doc is this?", "our docs feel
  scattered", or any task involving the four Diátaxis quadrants: tutorials, how-to guides,
  reference, and explanation. Also trigger when users share a documentation draft and ask
  for feedback, even if they don't mention Diátaxis by name.
metadata:
  source: https://github.com/evildmp/diataxis-documentation-framework/tree/46368951f988fd9827bd4a988e38da3f88338e9e
---

# Diátaxis Documentation Skill

Diátaxis is a framework for technical documentation based on the insight that
users have four distinct needs, each requiring a different form of content. Your
job is to apply this framework to help the user write, classify, critique, or
restructure documentation.

## The Four Quadrants

Two dimensions define the quadrants:

- **Action vs. Cognition**: Does the content guide what to *do*, or explain what
    to *know*?
- **Acquisition vs. Application**: Is the user *learning* (building skill), or
    *working* (applying skill)?

|               | Acquisition (learning) | Application (working) |
| ------------- | ---------------------- | --------------------- |
| **Action**    | Tutorial               | How-to guide          |
| **Cognition** | Explanation            | Reference             |

---

## Tutorials -- learning by doing

A tutorial is a guided learning experience. The goal is skill acquisition, not
task completion.

**The teacher bears responsibility for the learner's success.** The learner
should feel safe, guided, and rewarded at every step.

Key characteristics:

- Practical activity, but the *learning* is the real outcome--not the artifact
    produced
- Deliver visible results early and often; every step should produce something
    the learner can observe
- Constantly reassure: "You will see that...", "Notice that...", "Let's
    check..."
- Ruthlessly minimize explanation; link to it instead of embedding it
- Never present choices or alternatives--pick one path and follow it
- Must be perfectly reliable: every instruction must work for every user every
    time

Language: "We will...", "First, do x. Now, do y.", "The output should look
like..."

---

## How-to Guides -- directions for accomplishing work

A how-to guide helps a competent user solve a real-world problem. It assumes
they already know what they want--they just need to know how.

**Frame guides around user goals, not tool features.** "How to integrate
monitoring" addresses a user need. "Application performance monitoring" does
not.

Key characteristics:

- Defined by the problem the user needs to solve, not the features of the
    software
- Practical and adaptable--real-world problems aren't always linear
- Omit the unnecessary; completeness matters less than usability
- Link to explanation and reference instead of embedding them

Language: "This guide shows you how to...", "If you want x, do y.", "Refer to
[reference] for full options."

---

## Reference -- technical descriptions of the machinery

Reference is what users consult while working. It describes the software as it
is--neutrally, accurately, completely.

**Describe, don't instruct or explain.** Reference answers "what is this?" not
"how do I use it?" or "why is it this way?"

Key characteristics:

- Led by the product's structure (APIs, commands, options, classes), not user
    needs
- Austere and consistent in format--users should find information where they
    expect it
- Authoritative and unambiguous
- Examples illustrate usage without drifting into explanation

Language: "The x option accepts...", "Returns a list of...", "Must not be used
with..."

---

## Explanation -- understanding and context

Explanation deepens the reader's understanding of a topic. It can be read away
from the product, in a reflective mode.

**Explain *why*, not *how*.** Explanation covers design decisions, historical
reasons, trade-offs, and conceptual context that help the reader build mental
models.

Key characteristics:

- Takes a broader, higher perspective than other types
- Makes connections between topics and ideas
- Honest about alternatives, trade-offs, and opinions
- Does not instruct or replace how-to guides; links to them instead

Language: "The reason for x is...", "W is better than z because...",
"Historically, this approach..."

---

## The Compass -- classifying content

When unsure what type a piece of content is (or should be), ask two questions:

1. Does it inform **action** (doing something) or **cognition** (knowing
    something)?
2. Does it serve **acquisition** (learning) or **application** (working)?

| Content informs... | ...and serves... | Type         |
| ------------------ | ---------------- | ------------ |
| Action             | Acquisition      | Tutorial     |
| Action             | Application      | How-to guide |
| Cognition          | Application      | Reference    |
| Cognition          | Acquisition      | Explanation  |

If a piece of content is pulling in two directions, it probably needs to be
split.

---

## Common mistakes to fix

- **Tutorial that explains too much**: Strip the explanation, link to it
    instead. Keep the learner moving.
- **How-to guide framed around the tool, not the user**: Reframe the title and
    opening around the user's goal.
- **Reference that includes opinions or instructions**: Move those to
    explanation or how-to guides.
- **Explanation that drifts into how-to steps**: Extract the steps into their
    own how-to guide and link.
- **Mixed content that's hard to classify**: Usually a sign it needs to be split
    into two separate documents.

---

## How to approach each task type

### Writing new documentation

Before drafting, state which quadrant the content belongs to and why. Then hold
to that type throughout -- don't drift. Link to other types rather than
embedding their content.

### Classifying existing content

Apply the compass questions to each section individually. State the type, then
explain the reasoning in one sentence. If a section pulls in two directions,
flag it as mixed and suggest how to split it.

### Critiquing documentation

Structure your critique as:

1. **Classification** -- What type is this, or what type is it trying to be?
2. **What works** -- Identify what's well-suited to that type.
3. **What doesn't fit** -- Call out passages that belong to a different type,
    with a brief note on where they should go instead.
4. **Concrete suggestions** -- Specific rewrites or restructuring moves, not
    just labels.

Be direct. A vague "this mixes explanation and how-to" is less useful than
"paragraphs 3-5 explain *why* the config system works this way -- pull those
into a separate explanation doc and replace them here with a link."

### Restructuring a documentation set

Audit the existing docs, classify each one, then map gaps. Common patterns:

- Lots of reference + tutorials, no how-to guides → users can learn but struggle
    to accomplish real tasks
- Dense explanation buried in how-to guides → readers get slowed down when they
    just want steps
- No explanation at all → users cargo-cult the tutorials without understanding
    why things work

Suggest a structure that covers all four quadrants, and identify which existing
content to split, rename, or move.

---

## Reference files

The `.claude/skills/diataxis/references/` directory contains source files from
the Diátaxis website. Read these when you need more depth than this SKILL.md
provides. Each file is RST format.

| File                        | When to read it                                                                |
| --------------------------- | ------------------------------------------------------------------------------ |
| `tutorials.rst`             | Writing or critiquing a tutorial; understanding what makes tutorials work      |
| `how-to-guides.rst`         | Writing or critiquing a how-to guide                                           |
| `reference.rst`             | Writing or critiquing reference documentation                                  |
| `explanation.rst`           | Writing or critiquing explanation content                                      |
| `tutorials-how-to.rst`      | User is confused about whether content is a tutorial or how-to guide           |
| `reference-explanation.rst` | User is confused about whether content is reference or explanation             |
| `compass.rst`               | Classifying ambiguous content using the Diátaxis compass                       |
| `foundations.rst`           | User asks about the two dimensions (action/cognition, acquisition/application) |
| `theory.rst`                | User wants theoretical grounding or asks *why* Diátaxis works                  |
| `quality.rst`               | User asks about documentation quality, functional vs. deep quality             |
| `application.rst`           | User asks how to adopt or apply Diátaxis in practice                           |
| `complex-hierarchies.rst`   | User has nested or large documentation structures                              |
| `map.rst`                   | Overview of the Diátaxis map and how the four types relate                     |
| `start-here.rst`            | User is new to Diátaxis and needs orientation                                  |
| `how-to-use-diataxis.rst`   | Practical guidance on using the framework day-to-day                           |
| `colophon.rst`              | Background on the framework's origin (rarely needed)                           |
| `index.rst`                 | Top-level index; use to navigate when unsure which file to read                |
