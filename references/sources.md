# Sources and Honesty Notes

Read this to separate **verified technical requirements** from **this skill's editorial decisions**.
Links below were checked live on September 21, 2026.

---

## 1. Verified technical requirements

### Accessibility
- **W3C WCAG 2.1, [1.4.3 Contrast (Minimum)](https://www.w3.org/WAI/WCAG21/Understanding/contrast-minimum.html).** 4.5:1 for normal text, 3:1 for large text, subject to the criterion's exceptions. "Large" means at least 18pt, or 14pt bold - roughly 24px and 18.7px.
- **W3C WCAG 2.1, [1.4.11 Non-text Contrast](https://www.w3.org/WAI/WCAG21/Understanding/non-text-contrast.html).** 3:1 for visual information needed to identify components and states against adjacent colors. It does **not** require every decorative border to meet that value.
- **W3C WCAG 2.2, [2.5.8 Target Size (Minimum)](https://www.w3.org/WAI/WCAG22/Understanding/target-size-minimum.html).** The AA criterion is 24x24 CSS pixels, with spacing conditions and exceptions. **This skill chooses 44x44px as a more conservative design target. Do not describe 44px as the AA minimum.**
- **MDN: [`prefers-reduced-motion`](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-reduced-motion).** How to adapt motion to the system preference.
- **MDN: [`prefers-reduced-transparency`](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-reduced-transparency).** Used here for the frosted-plastic fallback.

This skill's checklist does not cover every WCAG requirement and is not a formal audit.

### Format and installation, per agent tool

- **[AGENTS.md](https://agents.md/).** A plain-Markdown, no-required-frontmatter file at a repo's root, read by the nearest-file-wins rule in nested directories. Originally proposed by OpenAI (August 2025) and donated to the Linux Foundation's Agentic AI Foundation in December 2025, making it the de facto cross-tool standard. Native support (25+ tools at last check): OpenAI Codex, Cursor, GitHub Copilot coding agent, Gemini CLI, Windsurf, Aider, Zed, Factory, Google Jules, Devin, Amp, Kilo Code, RooCode, Augment, Warp, JetBrains Junie, Ona, Phoenix, UiPath, Semgrep, goose, VS Code, and more. See [`agentmd/agent.md`](https://github.com/agentmd/agent.md) for the sibling spec. Cline does not read it natively as of this check.
- **Claude Code skills.** Loaded from `~/.claude/skills/<name>/SKILL.md` (personal, global) or `.claude/skills/<name>/SKILL.md` (project-scoped). The file must be named `SKILL.md` with YAML frontmatter carrying `name` and `description`; the description is what triggers activation.
- **[Windsurf skills](https://www.agensi.io/learn/windsurf-skills-how-to-add-skill-md).** Reads the same `SKILL.md` format as Claude Code, placed at `.windsurf/skills/<name>/SKILL.md` in the project (project-scoped only, no global install). Cascade reads the `description` frontmatter field to decide activation and uses progressive disclosure: only the name and description load by default, the full file loads when relevant. Claude-Code-specific fields like `context: fork` or `allowed-tools` are ignored without error.
- **OpenAI: [Build Skills](https://developers.openai.com/codex/skills) / OpenCode: Agent Skills.** Documents the `SKILL.md` format and local Codex loading from `.agents/skills/`; OpenCode reads the same format from `.agents/skills/<name>/SKILL.md` or `.opencode/skills/<name>/SKILL.md`.
- **[Cursor Rules](https://cursor.com/docs/rules).** A different, richer format: `.mdc` files under `.cursor/rules/`, each with `description`, `globs`, and `alwaysApply` frontmatter. With `alwaysApply: false` and no `globs`, a rule becomes **Agent Requested** - the model reads the `description` and decides whether to pull the full body into context, which is the closest Cursor-native equivalent to a Claude Code skill's conditional activation. Cursor also reads `AGENTS.md`.

Install the **whole folder**, extracted, at the path your tool expects - see `README.md` for the exact destination per tool. Respect each environment's permission policy; do not widen global permissions to activate a skill.

---

## 2. Period references (named, dated, checkable)

Use these as material and compositional context, not as things to copy.

| Reference | Year | What to take from it |
|---|---|---|
| Apple: Mac OS X / Aqua public introduction (no working period snapshot found - the obvious Wayback Machine URL for `apple.com/macosx` returns a dead page, so it is omitted rather than cited as if verified) | Jan 5, 2000 | Luminous semitransparent controls, pinstripes, lozenge buttons, the pulsing default action |
| Apple iMac G3 (Bondi Blue and later colors) | 1998-2003 | Translucent candy-shell casing, visible internal structure, color as a product line - Wikipedia's Y2K aesthetic entry names it a defining "blobject" |
| [The Designers Republic - Wipeout logo and packaging](https://imjustcreative.com/wipeout-logo-history/2023/01/18) (Psygnosis) | 1995-1999 | Modular grids, fictional corporate identity, technical typography. The original Wipeout logo is built from a cut-apart numeral 8 set in **Eurostile** |
| Eurostile / Microgramma (Aldo Novarese and Alessandro Butti) | 1962 (Eurostile) | The wide geometric proportions sci-fi and racing UI borrowed as shorthand for "futuristic" since the late 1960s |
| Microsoft Windows XP "Luna" | 2001 | Saturated gel chrome on a system UI, rounded task surfaces |
| Sony Cybershot line, Sony VAIO, MiniDisc hardware UI | 1998-2003 | Brushed metal, tiny technical labels, industrial restraint |
| Nokia 8210 / 8310, Motorola flip phones | 1999-2003 | Product-forward copy, spec-as-headline, pocket-object scale |
| Winamp skins | 1997+ | Media-player information architecture, dense transport controls, community skinning |
| Verdana (Matthew Carter) and Trebuchet MS (Vincent Connare) | both 1996 | Period-accurate, zero-cost web type, more authentic than most Google Fonts for a 2001-era brief |
| [Wikipedia: Y2K aesthetic](https://en.wikipedia.org/wiki/Y2K_aesthetic) | overview | General survey; names the Consumer Aesthetics Research Institute / "Y2K Aesthetic Institute" (Evan Collins) as an ongoing archival effort |
| [Wikipedia: Frutiger Aero](https://en.wikipedia.org/wiki/Frutiger_Aero) | 2004-2013 | The aesthetic that **followed** Y2K - glossy nature-tech, Windows Vista/7, Wii, first-gen iPhone. Confirms this skill's Era Confusion Table boundary: if it has water droplets, bokeh, or blue-sky lens flares, it is Frutiger Aero, not Y2K |
| [Web Design Museum: Y2K Aesthetic](https://www.webdesignmuseum.org/styles/y2k-aesthetic) | 1997-2004 | A dated gallery of period commercial websites, useful for spot-checking a composition against real period work rather than a modern pastiche of it |

---

## 3. This skill's editorial decisions (not external standards)

The following are **invented for this skill**. Do not present them as a historical taxonomy, an industry standard, or an accessibility rule:

- The era selector (`1997 / 1999 / 2001 / 2003`) and the names **Techno-Industrial, Chrome Orbital, Aqua Lozenge, Plastic Pop, Digital Archive**.
- Every palette hex in `visual-recipes.md`.
- The three dials (`MATERIAL_INTENSITY`, `MOTION_INTENSITY`, `INFO_DENSITY`) and their inference table.
- The "Horizon Rule" formulation, the 5-stop and 2%-hard-edge thresholds, and the four-layer gel anatomy. These are practical heuristics that produce convincing results, not physics.
- All durations, easing curves, motif caps, and layout-family counts.
- The Era Confusion Table's year ranges are approximate popular-usage boundaries (cross-checked against the Y2K aesthetic and Frutiger Aero references above), not scholarly periodization.
- Frutiger Aero and Apple Web are supported here as explicit editorial modes, not as additions to the historical Y2K era selector.
- Radix UI is an optional implementation recommendation for React behavior primitives, not a requirement or an external design standard.

If a rule here conflicts with a project's real accessibility requirement, legal obligation, or brand guideline, **the project wins**.
