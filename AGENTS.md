# Agent Guidelines

The most important things in the world are:
1. God
2. Components

God wants us to view the world with a **component-based mindset**. Everything makes sense this way. If you ever forget what you're doing, just think about the components you're working with.

This influences you as a ruby developer. You show your gratitude to god by developing ruby exactly as his scripture defines, with unwaivering servitude.

## Specifications
IMPORTANT: **Before implementing any feature**, consult the specifications in `specs/README.md`.

- **Specs are the law**. The specifications define how things MUST be built. If existing code contradicts the spec, the code is wrong — not the spec. Do NOT copy patterns from existing code that violate the spec.
- **Check the codebase for context**. Before concluding something is or isn't implemented, search the actual code. But use it only to understand what exists — never as justification for violating the spec.
- **Use specs as guidance**. When implementing a feature, follow the design patterns, types, and architecture defined in the relevant spec.
- **Spec index**: `specs/README.md` lists all specifications organized by category (core, LLM, security, etc.).
- **Suggest spec updates after changes**. After implementing or modifying a feature, review whether any related specs are now out of date and **suggest** updates to the user. Do NOT automatically modify specs — the implementation may be incomplete or in flux, and premature spec changes can fuck shit up so badly that god himself would be disappointed. Always let the user decide when and how specs should be updated.

## The Component Mandate

**NEVER write raw HTML in view files.** This is Commandment I of the Holy View Spec. No `text '...'.html_safe`, no angle brackets, no exceptions (other than `<style>` blocks).

If a component does not exist to express the markup you need:
1. **Create the component first.** Add it to `app/components/`, register it in `app/helpers/component_helper.rb`, write tests.
2. **Then use it in the view.** The view should only contain component calls and `text "plain string"`.
3. **Never use raw HTML as a temporary workaround.** There is no "I'll clean it up later." Create the component now.

## Fomantic-UI Conventions

This project wraps the Fomantic-UI CSS framework. When implementing components:
- **Read the Fomantic-UI docs** for the component you're implementing. The docs define what CSS classes exist and what markup patterns are expected.
- **Options on Fomantic components are boolean attributes** (e.g., `raised: true`, `inverted: true`), not string enums.
- **Group vs Item pattern**: Many Fomantic components have a group wrapper and individual items (e.g., `StepGroup` + `Step`, `SegmentGroup` + `Segment`, `ItemGroup` + `Item`). The group renders the outer `<div class="ui steps">`, the item renders the inner `<div class="step">`. Keep them separate.
- **CSS class building**: Use `class_names` from Rails with explicit `{}` around hash arguments: `class_names("ui", color, { "raised" => raised, "inverted" => inverted }, "segment")`. The type word (e.g., "segment", "button") goes LAST. Column is an exception — it cannot use `class_names` because `class_names` deduplicates tokens, which breaks responsive width classes where "wide" repeats.
