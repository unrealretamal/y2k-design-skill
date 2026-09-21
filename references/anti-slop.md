# Y2K Anti-Slop

The failure modes that make AI-generated Y2K look like AI-generated Y2K. Each entry: what it is, why it is wrong, what to do instead.

---

## A. Wrong-era imports (the biggest category)

| Ban | Why it is wrong | Instead |
|---|---|---|
| Purple to cyan 45° gradient background | Vaporwave (2010s) plus the generic AI default. Y2K used silver, ice, blue, chrome. | Ice or cream base, one saturated accent, material as the visual interest |
| Neon glow text on black | Cyberpunk (1982-1999 dystopia). Commercial Y2K was optimistic and light. | Bloom on **one control**, not an aura on type. Light background |
| Grid floor plus sunset sun | Synthwave/Outrun, 1984 retrofuturism, off by 15 years | Orbital forms, satellite arcs, product photography |
| Katakana, kanji, "サイバー" as decoration | Vaporwave set dressing. Also careless toward a real language | Technical codes, part numbers, unit specs in the user's language |
| Greek busts, palm trees, dolphins, checkerboard floors | Vaporwave iconography | Discs, orbits, lozenges, molded objects |
| Under construction GIFs, hit counters, visitor badges, tiled backgrounds | Web 1.0 / Geocities amateur web, a different and cheaper aesthetic | Only if the brief explicitly asks for Geocities |
| Glossy green, water droplets, bubbles, tropical fish | Frutiger Aero (2004-2013), the era *after* this one when the brief says Y2K | Frosted candy plastic instead of wet-nature gloss; use the dedicated Frutiger Aero recipe only when explicitly requested |
| VHS scanlines, chromatic aberration, "degraded" filters | Nostalgia and irony. Y2K was brand new, not a worn tape | Grain at 3-6%. Nothing damaged |

---

## B. Material failures

1. **A 2-stop grey gradient called chrome.** No horizon, no bands, no edge. See `materials.md` 1.A.
2. **Chrome on everything** including 14px labels, nav items and form fields. Chrome is display-only, 32px+, max two instances.
3. **Glassmorphism standing in for chrome.** Blur is not a material identity. Add rim light and visible thickness or use real metal.
4. **Stacked transparency** - a frosted panel inside a frosted panel inside a frosted modal.
5. **Same gradient on every card.** Material has to earn its place; repeated identically it becomes wallpaper.
6. **Lens flares.**
7. **Untextured floating 3D blobs** with no relationship to the content.
8. **Clean vector look** from skipping grain.
9. **White text on vivid pink, lime, cyan or yellow gel.** Fails contrast every time. Use a dark ink of the same hue.
10. **Every corner a pill.** Aqua used pills on controls and near-square on panels.

---

## C. Typography failures

- **`Orbitron` as the headline font.** Not historically wrong, but it is the tell: it is what every model reaches for. Use it only when named in the brief.
- **`Press Start 2P`, `VT323`, `Silkscreen` for headlines or body.** 8-bit arcade is a different decade. A 10px badge at most.
- **Comic Sans as the "playful" choice.** Web 1.0 amateur, not Y2K commercial.
- **`scaleX()` stretched letters.** Use a real wide face or a variable width axis.
- **Gradient, outline or chrome fills on body, labels, buttons or nav.**
- **Type baked into images.** Not selectable, not translatable, not accessible.
- **Four or more type families.** Three is the ceiling.

---

## D. Composition failures

- **Three identical feature cards in a row.** The era did not do symmetric card grids. Use asymmetry, overlap, or a numbered index.
- **Centered everything.** A centered hero is allowed once, when the message *is* the design. Otherwise split or offset.
- **Eight sections, one layout family.** Minimum four distinct families across eight sections; no three consecutive image/text splits.
- **Decoration filling empty space.** Negative space is composition. Sparkles sprinkled into gaps are panic.
- **More than two motif families per view.**
- **Hero that overflows the viewport.** Headline max 2 lines, subtext max 20 words, CTA visible without scrolling.
- **Desktop layout shrunk for mobile.** Recompose: restack, reorder, drop decoration, keep one material moment above the fold.

---

## E. Content failures

- **Filler-tech copy:** `SYSTEM ONLINE`, `ACCESS GRANTED`, `LOADING...`, `INITIALIZING`, `[ DATA ]`, `CYBER`, `>_`. Cyberpunk cosplay.
- **Modern SaaS voice:** "Seamlessly orchestrate", "Elevate", "Unleash", "Next-gen", "Revolutionize". Y2K copy was concrete and product-forward: "Introducing", "Now in six colors", "79 grams".
- **Placeholder brands:** Acme, Nexus, Cloudly, SmartFlow, Lorem. Invent something period-plausible and specific.
- **Placeholder people:** John Doe, Jane Doe, Sarah Chan. Use locale-appropriate realistic names.
- **Fake-perfect numbers:** `99.99%`, `10,000+`, `50%`. Use organic values.
- **Invented testimonials, client logos, metrics, integrations or partnerships.** Never. Label demo data as demo data.
- **Em-dashes (`—`) and decorative en-dashes (`–`).** Zero, anywhere user-visible. Period, comma, or hyphen.
- **The word "aesthetic" or "vibes" in the deliverable.**

---

## F. Behavior failures

- Autoplay audio, custom cursors, cursor trails, scroll hijacking.
- Fake loading screens and fake progress bars.
- Looping sweeps, looping iridescence, looping glow.
- Marquee carrying body content.
- Motion that, when disabled, removes functionality.
- State communicated by shine alone. Selection needs shape or position.
- Decorative material intercepting clicks (`pointer-events` not disabled).
- Focus ring invisible on chrome.

---

## G. The three tests

**1. The grayscale test.** Screenshot, desaturate. Is there a clear focal point and a clear priority action? If it goes flat, the composition is the problem. Adding more chrome will not fix it.

**2. The reframe test.** Delete every material effect. Does it look like an ordinary 2024 template? Then it was a texture pack, not art direction. Rebuild the composition and typography.

**3. The era test.** Name one real artifact from 1997-2004 that this page could plausibly sit next to - a specific product, sleeve, game, OS, or campaign. If you cannot name one, you are designing a pastiche of other pastiches.
