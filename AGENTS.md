# Y2K Design Agent

This file follows the [AGENTS.md](https://agents.md) standard so any AGENTS.md-reading tool
(Cursor, Windsurf, GitHub Copilot, Gemini CLI, Amp, Jules, Devin, Zed, Aider, RooCode, Factory,
Warp, JetBrains Junie, Ona, and 15+ more) picks this repo up automatically. If your tool reads
`SKILL.md` natively instead (Claude Code, Windsurf, Codex, OpenCode), use that file - see
`README.md` for install paths per tool.

## Self-gating (read first, every time)

This is a **design skill**, not a general project convention. It applies **only** when the
current request is a Y2K / millennium / chrome / gel / cyber-pop / early-2000s design brief.
For every other task in this repo or in a project where this file has been copied in, **ignore
everything below** and behave normally. Never impose this aesthetic on work that did not ask
for it, and never treat "Y2K" as a synonym for the year-2000 date bug.

## When it applies

1. Read `SKILL.md` in full before writing any code or copy. It holds the five governing laws,
   the era selector, the three dials, typography, composition, accessibility and delivery rules.
2. Before writing chrome/gel/aqua/frost/holo CSS, read `references/materials.md`.
3. Before writing any animation, read `references/motion.md`.
4. Before the final pass, read `references/anti-slop.md` and run `references/quality.md` in full.
5. `references/visual-recipes.md` has one complete recipe per era - read only the one you picked.

## The five laws (condensed - full reasoning in SKILL.md Section 0)

1. **The future was a product, not a vibe.** Surfaces look molded, not printed.
2. **Light is the material.** Chrome reflects a horizon (5+ gradient stops, one hard edge under
   2%, unequal bands) - not a 2-stop grey gradient.
3. **Optimism, not irony.** This is Y2K while it was alive, not vaporwave mourning it. Default
   to light backgrounds; neon-on-black is a different, later aesthetic (see the era table).
4. **Interfaces were toys.** One real signature *control* per project (a dial, a switcher, a
   snapping tab strip) that changes real state - not a decorative animation.
5. **Over-designed, never illegible.** The hierarchy must survive with every effect stripped
   (the grayscale test).

## Eras (pick exactly one per project)

| ERA | Name | World |
|---|---|---|
| 1997 | Techno-Industrial | The Designers Republic, Wipeout, hazard labels |
| 1999 | Chrome Orbital (default) | Millennium ads, liquid metal, satellite graphics |
| 2001 | Aqua Lozenge | Mac OS X Aqua, iMac G3, pinstripes |
| 2003 | Plastic Pop | Motorola/Nokia color screens, MSN, holographic stickers |

Never mix eras. Never substitute vaporwave, synthwave, cyberpunk, or Frutiger Aero (the *next*
era, 2004-2013) for Y2K - `SKILL.md` Section 0 has the full confusion table.

## Commands

This is a documentation-only skill package: Markdown and CSS snippets, no build step, no tests
to run. Nothing here needs `npm install` or a build command.

## Boundaries

Do not delete or rewrite `SKILL.md` or the `references/` files as part of an unrelated coding
task. Do not commit or push without being asked. If this file was copied into a real project,
respect that project's own `AGENTS.md` at the project root - the nearest file wins, and this
one only governs work under the directory it was placed in.
