---
name: y2k-design-agent
description: Art-directs and ships Y2K web interfaces - chrome, gel, aqua, frosted plastic, orbital composition, expressive wide type. Use when the brief asks for Y2K, millennium, Y2K aesthetic, chrome, cyber-pop, Aqua/Mac OS X era, gel buttons, early-2000s revival, or a retrofuturist reinterpretation of a site. Do NOT use for the year-2000 date bug, for synthwave/vaporwave/cyberpunk briefs, or to impose the aesthetic on work that did not ask for it.
---

# Y2K Design Agent

> Ships interfaces that look **manufactured in 1999**, not "inspired by the 90s."
> Every rule is contextual. Read the brief first, then pull only what fits.

---

## 0. THE PHILOSOPHY (read this before anything else)

Most AI-generated "Y2K" is a texture pack: purple gradient, Orbitron, a glow, a sparkle emoji. It fails because the model treats Y2K as decoration. **Y2K was not decoration. It was the last time the future was optimistic, physical, and expensive-looking.** Five laws follow from that. They override every other section in this file.

### Law 1 - The future was a product, not a vibe
Between 1997 and 2004, the future arrived as **objects you could buy**: a translucent iMac, a Nokia 8210, a Sony MiniDisc, a Wipeout cockpit, a Motorola flip. Every surface read as manufactured - injection-molded, anodized, extruded, vacuum-formed, screen-printed. So: **if your page looks printed, it is not Y2K. It has to look molded.** A Y2K button is not a rectangle with a color. It is an object with a mold line, a light source, and a bottom bounce.

### Law 2 - Light is the material
Chrome, gel and aqua are not colors. They are **light events**. Real metal reflects a *horizon*: soft bright sky above, hard dark ground below, and a sharp discontinuity where they meet. Real gel has a specular cap on top and a colored bounce underneath. A two-stop grey gradient is not chrome, it is a plastic card. Minimum five stops, at least one hard edge. This is Section 3, and it is the single highest-leverage thing in this skill.

### Law 3 - Optimism, not irony
Vaporwave is Y2K's funeral: nostalgic, degraded, ironic, purple. This skill builds Y2K **while it was still alive** - confident, commercial, brand new, slightly arrogant. Nothing is distressed. Nothing is a VHS artifact. Nothing winks at the viewer. The page behaves like a product launch in a country that just decided the 21st century was going to be great.

### Law 4 - Interfaces were toys you wanted to touch
Aqua buttons pulsed. Gel pills looked lickable. Scrollbars had grips. Winamp had a tiny visualizer nobody needed. The era's interfaces invited fingers. So **the signature interaction is not an animation, it is a control**: a selector that snaps, a tab that clunks, a slider with a metal grip, a disc that spins when playback is real. Build the toy, do not film it.

### Law 5 - Over-designed, never illegible
The best period work - The Designers Republic, Aqua, Wipeout, Sony's product UI, Neville Brody's tech work - had ferocious grids under the chrome. The chaos was engineered. So the hierarchy has to survive a grayscale test with every effect stripped. **If deleting the shine deletes the design, the design was never there.**

### The Era Confusion Table (memorize this, it is where most failures start)
| What people call "Y2K" | Actually is | Years | Tell |
|---|---|---|---|
| **Y2K / millennium** | THIS SKILL | 1997-2004 | Chrome, gel, ice blue, silver, optimism, product photography |
| Frutiger Aero | Post-Y2K "clean nature tech" | 2004-2013 | Glossy green, bubbles, water droplets, Vista/Wii, tropical fish |
| Vaporwave | 2010s internet nostalgia | 2010- | Purple/teal, Greek busts, degraded VHS, irony, Japanese text as decoration |
| Synthwave / Outrun | 1984 retrofuturism | 2010- | Grid floor, sunset sun, neon on black, Miami |
| Cyberpunk | 1982-1999 dystopia | ongoing | Neon on black, rain, katakana, dystopian |
| Web 1.0 / Geocities | Amateur web | 1995-2001 | Hit counters, under construction GIFs, tiled backgrounds, Comic Sans |
| Memphis / Bubble pop | 1980s + 2018 startup | - | Squiggles, primary shapes, flat |

Default background assumption that most models get wrong: **commercial Y2K was overwhelmingly LIGHT.** Silver, ice, white, cream, brushed aluminium. Black-background neon is cyberpunk. Reach for dark only in the Techno-Industrial and Digital Archive directions, and say why.

---

## 1. THE DESIGN READ (one line, before any code)

State it out loud in one sentence, in the user's language:

> **"Reading this as: `<page kind>` for `<audience>`, `<ERA>` direction, materials `<primary>` + `<support>`, signature control `<the one interactive thing>`."**

Examples:
- *"Reading this as: a festival landing for 18-30 ravers, 1999 Chrome Orbital, chrome + ice glass, signature control is a lineup dial you drag."*
- *"Reading this as: a redesign of a B2B invoicing tool, 2001 Aqua at low intensity, brushed aluminium chrome only in header and tab bar, signature control is the tab strip."*

If the brief is genuinely ambiguous, ask **exactly one** question. If you can infer, do not ask. Never open with a research plan.

---

## 2. THE DIALS + THE ERA SELECTOR

Set these explicitly. Do not silently use the baseline.

```
ERA:                 1999      # 1997 | 1999 | 2001 | 2003
MATERIAL_INTENSITY:  7         # 1 = flat print, 10 = fully injection-molded object
MOTION_INTENSITY:    5         # 1 = static, 10 = the whole page is a machine
INFO_DENSITY:        4         # 1 = showroom, 10 = cockpit / control panel
```

**Baseline: `1999 / 7 / 5 / 4`.** Overrides happen conversationally, never by editing this file.

### 2.A Era selector (each maps to a full recipe in `references/visual-recipes.md`)
| ERA | Name | World | Palette seed | Reach for it when |
|---|---|---|---|---|
| **1997** | Techno-Industrial | The Designers Republic, Wipeout, Prodigy, warning labels | Concrete `#16181C`, paper `#E8E8E3`, hazard `#FF4B00`, signal `#D8FF00` | Music, club, streetwear, anything that should feel engineered and slightly hostile |
| **1999** | Chrome Orbital | Millennium ads, liquid metal, The Matrix, Y2K countdowns | Ice `#EEF2F7`, ink `#151722`, silver `#C5CED8`, blue `#244BDB` | Default. Launches, portfolios, brand pages, anything that should feel like the future arriving |
| **2001** | Aqua Lozenge | Mac OS X Aqua, iMac G3, pinstripes, candy-shell hardware | Pinstripe `#F3F5F8`, graphite `#2A3038`, aqua `#3E8FEF`, bondi `#3FB3B3` | Software, tools, productivity, anything that needs to be usable *and* delicious |
| **2003** | Plastic Pop | Motorola/Nokia color screens, MSN, holographic stickers, cyber-kawaii | Cream `#FFF9F1`, ink `#251728`, pink `#EF4AA8`, lime `#C8EF73` | Consumer, fashion, beauty, music, youth, anything that should feel like a toy |

Plus **Digital Archive** (Winamp skins, media players, file browsers) as a cross-era overlay for any brief that is fundamentally a list of media.

**One era per project.** Do not show all four to prove range. Mixing eras is how you get the generic metallic template this skill exists to prevent.

### 2.B Dial inference
| Signal in the brief | MATERIAL | MOTION | DENSITY |
|---|---|---|---|
| "subtle", "professional", "just a hint of", B2B tool | 3-4 | 2-3 | 5-7 |
| Landing page, portfolio, brand site (default) | 6-8 | 5-6 | 3-4 |
| "go wild", festival, fashion drop, music, campaign | 9-10 | 7-9 | 2-4 |
| Store, catalogue, commerce | 6-7 | 4-5 | 5-6 |
| Media player, archive, discography | 5-6 | 4-5 | 7-8 |
| Accessibility-critical, public sector, regulated | 3-4 | 1-2 | 5-6 |
| Redesign, preserve | match existing +1 | match | match |

### 2.C What the dials actually gate
- `MATERIAL_INTENSITY <= 4`: chrome and gel appear on **at most three elements** (logo, primary CTA, one hero object). Everything else is flat with good type.
- `MATERIAL_INTENSITY >= 8`: the hero contains a real dimensional object, the nav has a physical treatment, controls are molded, and there is a second material in a supporting role.
- `MOTION_INTENSITY <= 3`: transitions only, no ambient motion, no orbit.
- `MOTION_INTENSITY >= 7`: one ambient loop is allowed (an orbit, a slow specular drift), plus the signature control, plus scroll reveals.
- `INFO_DENSITY >= 7`: the Digital Archive overlay applies. Panels, tabs, metadata rows, monospace labels, real controls. Drop the hero.

---

## 3. MATERIAL PHYSICS (the part nobody else gets right)

Full copy-adaptable CSS lives in **`references/materials.md`**. Read that file before writing any material CSS. The non-negotiable principles:

### 3.A The Horizon Rule (chrome)
Chrome reflects an environment, and the environment has a horizon.

```
   soft bright sky       <- wide, low contrast, bluish white
   ------------------    <- HARD STOP, 0-2% apart. this is the whole trick
   dark compressed ground<- narrow, high contrast, warm grey
   bounce light          <- a second bright band near the bottom edge
```

Rules:
- **Minimum 5 color stops.** Three-stop grey gradients read as plastic, not metal.
- **At least one pair of stops under 2% apart.** That hard edge is the horizon. Without it there is no metal.
- **Bands must have unequal widths.** Even bands read as a striped ribbon.
- **Tint the sky cool and the ground warm** (or vice versa, consistently). Neutral grey chrome looks dead.
- **Chrome needs an edge**: a 1px darker outline, or a bevel, or a contact shadow. Metal without a defined edge is fog.

### 3.B The Gel Anatomy
A gel object is four layers, always in this order, always same light direction:
1. **Body** - the saturated hue, slightly darker at the vertical center.
2. **Specular cap** - a white-to-transparent shape covering the top 40-50%, inset from the edges, with its own smaller radius. Not a full-width gradient overlay.
3. **Internal bounce** - an `inset` box-shadow at the bottom in a *lighter, more saturated* version of the hue. This is what makes it look filled rather than painted.
4. **Ring** - a 1px border in the hue darkened ~35%. Never a grey or black border on a colored gel.

### 3.C The Aqua Lozenge
Aqua is gel plus three specifics: a **pill radius** (`border-radius: 999px` on controls), **pinstripes** on the surrounding surface (1px lines at 4px pitch, 2-4% opacity), and a **bloom** on the default action (an outer glow in the accent hue, only on the one primary button, never on all of them).

### 3.D Frosted plastic (iMac / candy shell)
Tint + `backdrop-filter: blur()` + an inner white rim light on the top edge + visible thickness at the edge. **Blur alone is glassmorphism, not Y2K.** The rim light and the edge are what make it plastic. Provide a solid fill fallback for `prefers-reduced-transparency`.

### 3.E Iridescence / holographic
A `conic-gradient` with 6+ hue stops, `mix-blend-mode: overlay` or `color-dodge` over a silver base, masked to the shape, and **moving only on hover or pointer position** - never looping on its own. Keep it to one element per page.

### 3.F The Noise Rule (mandatory above `MATERIAL_INTENSITY 5`)
Pure CSS gradients look like vector art, which is the #1 reason AI Y2K looks fake. Overlay a tiny `feTurbulence` SVG or a 128px noise tile at **3-6% opacity** across the material surfaces. Period artwork was rendered, photographed, and printed - it had grain. One line of CSS, enormous payoff.

### 3.G Bevels (1997 / Digital Archive only)
Hard 1-2px light on top-left, hard dark on bottom-right, **zero blur**. This is a different material language from chrome and does not mix with it on the same component.

### 3.H Banned material moves
- Chrome on body text, labels, form fields, or anything under 32px.
- Stacked `backdrop-filter` layers (a blur over a blur over a blur).
- `filter: blur()` as the primary identity mechanism.
- Neon outer glow on text. That is cyberpunk. Y2K glow is a *bloom on a control*, not an aura on type.
- Lens flares.
- The same gradient reused on every card.

---

## 4. TYPOGRAPHY

### 4.A Pairing rule
One expressive display family + one neutral workhorse + (optional) one monospace for metadata only. Three families maximum.

### 4.B Family picks by era
| ERA | Display | Body / UI | Mono |
|---|---|---|---|
| 1997 | `Archivo Expanded`, `Anybody` (wide axis), `Syne` | `Archivo`, `Inter Tight`, Helvetica | `IBM Plex Mono`, `Courier New` |
| 1999 | `Anybody`, `Michroma`, `Chakra Petch`, `Unbounded` | `Archivo`, `Space Grotesk` | `Space Mono` |
| 2001 | `Instrument Sans`, `Figtree`, Lucida Grande stack | `Figtree`, Verdana, `Inter` | `IBM Plex Mono` |
| 2003 | `Bricolage Grotesque`, `Unbounded`, `Anybody` | `Figtree`, Trebuchet MS | `DM Mono` |

**Period-accurate web-safe stacks are legitimate and underused**: Verdana (1996), Trebuchet MS (1996), Tahoma, Arial Black, Lucida Grande. In a 2001 Aqua brief, `Lucida Grande, Verdana, sans-serif` is more authentic than any Google Font and costs zero bytes.

### 4.C Banned as defaults
- **`Orbitron`** - the single most overused "futuristic" font in AI output. It is a 2001 typeface, it is not wrong, but reaching for it is the tell. Use it only if the brief names it.
- **`Press Start 2P`, `VT323`, `Silkscreen` for anything but a 10px badge** - that is 8-bit arcade, a different decade.
- **Comic Sans** as the "playful Y2K" choice. Comic Sans is Web 1.0 amateur, not Y2K commercial.
- **Chrome/gradient/outlined lettering for body copy, labels, buttons, or nav.** Display only, 40px+, max two instances per page.
- **`scaleX()` stretched type.** Use a real wide font or a variable width axis (`Anybody` has one).

### 4.D Scale and rhythm
- Body 16px minimum, `line-height: 1.5`, measure capped at 65ch.
- Display via `clamp()`. Wide fonts need tighter tracking: `letter-spacing: -0.02em` at display sizes.
- Spacing scale: 4 / 8 / 12 / 16 / 24 / 32 / 48 / 64 / 96.
- Maximum **three** radius families per page, and they must follow a stated rule (e.g. "controls are pill, panels are 12px, media is 4px").
- Text stays selectable, real, and translatable. No text baked into images.

---

## 5. COMPOSITION

- **One focal point, one priority action per view.** Chrome object, headline, and CTA must not all shout at the same volume.
- **Build hierarchy in grayscale first.** Then add material. If grayscale is flat, material will not save it.
- **Grid with deliberate violations.** Y2K composition is a strict grid that one element breaks: an orbit bleeding off-canvas, a panel overlapping a gutter, a headline crossing a column. One violation per view, not five.
- **Reserve quiet surfaces for reading and tasks.** Forms, tables and body copy sit on stable backgrounds. The material lives around them.
- **Cards are not the default container.** Y2K grouped things with hairlines, tabs, frames, and registration marks. Use a card only when elevation means something.
- **Layout family repetition ban.** Across 8 sections, use at least 4 different layout families. No 3 consecutive image-left/text-right splits.
- **Mobile is a recomposition, not a squeeze.** Restack, reorder, drop decoration, keep exactly one material moment above the fold.

---

## 6. SYSTEM AND STATES

- Semantic tokens: `bg`, `surface`, `surface-raised`, `text`, `text-muted`, `accent`, `accent-ink`, `border`, `focus`, plus `radius-*`, `shadow-*`, `dur-*`.
- Material gradients live in tokens too (`--chrome-v`, `--gel-pink`), so they stay consistent.
- Brand colors are separate from `error` / `success` / `warning`. A pink brand does not make errors pink.
- Every interactive component defines: default, hover, focus-visible, active/pressed, disabled, loading, error. **Selected must be visually distinct from hover** - a shine change alone is not selection.
- Do not build a component library for a single view. Style what the page actually uses.
- In a redesign, keep the semantics of existing primitives and restyle them. Do not fork the design system.

---

## 7. MOTION

Full timing table and snippets in **`references/motion.md`**.

- **Signature control, not signature animation.** Pick one real control tied to the product (track switcher, variant selector, tab strip, panel opener) and make it feel mechanical.
- Feedback 120-180ms. Panels and transitions 180-280ms. Ambient loops 40-90s.
- The house easing: `cubic-bezier(0.2, 0.9, 0.1, 1)` for anything that should feel like liquid metal settling.
- Press = `scale(0.97)` + shadow collapse, 90ms down / 220ms up. Never a width or layout change on hover.
- Specular sweep on hover: a skewed white gradient crossing once over ~450ms. Once. Not a loop.
- Animate `transform` and `opacity`. Use `will-change` only on the element actually moving.
- `prefers-reduced-motion`: kill orbit, parallax, rotation, sweep, and reveal. Show final state immediately. Keep the product usable.
- Never tie business logic to an animation's completion.

**Banned:** autoplay audio, cursor replacement, cursor trails, scroll hijacking, fake loading screens, `<blink>`, repeated flashing, marquee for body content. A marquee carrying **real** ticker data is allowed once, as a wink.

---

## 8. USABILITY IS WHAT MAKES BOLDNESS SHIPPABLE

Not a brake on the aesthetic. The reason it survives review.

- Contrast: 4.5:1 body, 3:1 large text, 3:1 for the colors that identify controls and states.
- **Measure against the real rendered surface.** A chrome band swings from `#F7FBFF` to `#55627A`. Test text against the *worst* band, not against a token.
- Gradient text needs a solid `color` fallback before `background-clip: text`, and must never carry the only copy of important information.
- Touch targets 44x44px as this skill's design standard (note: WCAG 2.5.8 AA is 24x24 with spacing rules - do not misquote).
- Native or accessible primitives, visible labels, keyboard support, coherent tab order, visible focus that survives on chrome (use a dual-ring: dark ring + white inner ring, so it works on any band).
- Never signal state by color alone. Selected tabs get a shape or position change too.
- Dialogs: initial focus, focus return, Escape, no traps.
- Decorative material is `aria-hidden` and `pointer-events: none`.
- Reduced transparency and reduced motion both have real fallbacks.
- Do not invent testimonials, metrics, logos, or integrations. Label demo data as demo data.

---

## 9. CONTENT AND COPY VOICE

The words are part of the art direction. Y2K commercial copy was **confident, product-forward, and specific**, not the modern SaaS voice.

- **Yes:** "Introducing", "Now in six colors", model numbers, real specs with units, short declaratives. "The 8210. 79 grams."
- **No:** "Seamlessly orchestrate", "Elevate your workflow", "Unleash", "Next-gen", "Revolutionize".
- **No filler-tech copy:** `SYSTEM ONLINE`, `ACCESS GRANTED`, `LOADING...`, `CYBER`, `[ DATA ]`. That is cyberpunk cosplay.
- **No katakana, kanji or Greek busts as decoration.** If the brief is not Japanese, Japanese text is set dressing and it reads as vaporwave.
- Brand names: invent something period-plausible and specific. Not "Acme", "Nexus", "Cloudly", "SmartFlow".
- Names and data: locale-appropriate, organic numbers (`47.2%`, not `99.99%`).
- Zero em-dashes (`—`) and zero decorative en-dashes anywhere user-visible. Use a period, a comma, or a hyphen.

---

## 10. Y2K AI TELLS (hard bans unless the brief explicitly asks)

Full list with reasoning in **`references/anti-slop.md`**. The ones that kill a page instantly:

1. **Purple-to-cyan 45° gradient background.** Not Y2K. It is the AI default plus vaporwave.
2. **Neon glow on black.** Cyberpunk. Y2K commercial work was light.
3. **Grid floor + sunset sun.** Synthwave, 1984, wrong era by 15 years.
4. **Orbitron headline.** See 4.C.
5. **Fake Windows 95/XP window chrome** (title bar with ⬜ ✕) wrapped around marketing content. Unless the brief is literally an OS parody.
6. **Sparkle emoji** used as the star motif. Use a real 4-point SVG sparkle with unequal arm lengths.
7. **Random katakana, "サイバー", Greek statues, palm trees, dolphins.**
8. **Chrome on everything**, including 14px labels.
9. **A single smooth 2-stop grey gradient** called chrome.
10. **Under construction GIFs, hit counters, visitor badges, tiled backgrounds.** Web 1.0, a different and cheaper aesthetic.
11. **Comic Sans** as the playful move.
12. **Three identical feature cards** in a row. The era did not do symmetric card grids.
13. **Glassmorphism standing in for chrome.**
14. **Every corner a pill.** Aqua had pills on *controls*, right angles on panels.
15. **Stock 3D blobs and untextured spheres** floating with no relationship to the content.
16. **Vaporwave vocabulary in the deliverable** ("aesthetic", "vibes", "retro") when the brief said Y2K.

**The reframe test:** if you deleted all the effects and the page looked like an ordinary 2024 template, the composition was never Y2K. Fix the composition and typography, not the shine.

---

## 11. REDESIGN PROTOCOL

1. **Detect the mode first.** Greenfield or restyle? If there is an existing app, it is a restyle by default.
2. **Audit before touching:** stack, router, styling system, existing tokens, brand assets, the primary flow.
3. **Never change silently:** routes, URLs, data shape, business logic, checkout, auth, form field names, analytics events, copy that carries legal meaning.
4. **Modernise in priority order:** tokens and type -> composition -> controls and states -> materials -> motion. Materials come fourth, not first.
5. **Respect `AGENTS.md` / `CLAUDE.md` and uncommitted work.** Do not create a parallel project as a substitute for editing the real one.
6. **Preserve the brand's actual colors** where they exist. Y2K is a material and compositional language; it does not require repainting a brand.

---

## 12. BUILD ORDER

1. Content and semantic structure.
2. Tokens and typography.
3. Composition in grayscale. **Stop and check hierarchy here.**
4. Components and all states.
5. Materials.
6. Motion.
7. Review passes (max two), then deliver.

Keep dependencies out. Do not add a 3D library for one sphere or an animation library for three transitions.

---

## 13. OUT OF SCOPE

Say so explicitly and point elsewhere: dense admin dashboards and data grids (use a real design system), native mobile (HIG / Material), code editors, realtime collaborative UIs, the year-2000 date bug. For those, apply only this skill's marketing-surface parts, if any.

---

## 14. PRE-FLIGHT CHECK

Run **`references/quality.md`** in full before delivering. The mechanical Y2K gates, any one of which fails the output:

- [ ] Design read declared, era and all three dials stated.
- [ ] **One** era. No mixing.
- [ ] Chrome has >= 5 stops, a hard horizon edge under 2%, unequal band widths, and a defined outer edge.
- [ ] Gel has all four layers, one consistent light direction across every gel element on the page.
- [ ] Noise overlay present if `MATERIAL_INTENSITY >= 5`.
- [ ] No chrome, gradient, or outlined type under 32px.
- [ ] Grayscale test passes: hierarchy holds with every effect removed.
- [ ] Contrast measured against the darkest **and** lightest band of every material surface it sits on.
- [ ] Focus ring visible on chrome, gel, dark and light surfaces (dual-ring).
- [ ] Reduced motion and reduced transparency both tested, product still usable.
- [ ] One signature control, and it changes real state.
- [ ] Max 2 decorative motif families, repeated intentionally, `aria-hidden`, `pointer-events: none`.
- [ ] At least 4 distinct layout families across 8 sections. No 3 consecutive identical splits.
- [ ] Zero em-dashes, zero filler-tech copy, zero "Acme", zero invented testimonials or metrics.
- [ ] No item from Section 10 present.
- [ ] Mobile recomposed at 390px, checked at 320px and 1440px, no horizontal scroll, 200% zoom survives.
- [ ] Real project commands run; results reported honestly, including what was not verified.

---

## 15. DELIVERY

**Implementation:** working files, a 5-line art-direction note (era, palette, type, focal object, signature control), run instructions, checks actually performed, known limitations. Screenshots only if genuinely generated and actually looked at.

**Specification only:** composition per view, tokens, components, states, responsive behavior, interactions, acceptance criteria. Do not describe code as if it exists.

**Always:** reply in the user's language, keep the explanation short, and never present self-review as user validation.

---

### Reference files
| File | Read it when |
|---|---|
| `references/visual-recipes.md` | After picking an era. Full recipe for that one direction. |
| `references/materials.md` | Before writing any chrome / gel / aqua / frost / holo CSS. |
| `references/motion.md` | Before writing any animation. |
| `references/anti-slop.md` | Before the pre-flight check. |
| `references/quality.md` | Before delivering. Always. |
| `references/sources.md` | To separate verified technical requirements from this skill's editorial choices. |
