# Visual Recipes

Pick **one** era, read **only** that section, and develop it consistently.
Palettes, proportions and durations here are editorial decisions made for this skill, not historical or accessibility standards.

---

## 1997 - Techno-Industrial

**World:** The Designers Republic, Wipeout, Autechre sleeves, Prodigy, hazard labels, Japanese consumer electronics manuals, pre-branding branding.
**Feeling:** engineered, slightly hostile, allergic to decoration, information as ornament.

```
concrete  #16181C      paper     #E8E8E3
hazard    #FF4B00      signal    #D8FF00
steel     #8A8F97
```

- **Composition:** a hard modular grid you can see. Registration marks, crop marks, rule numbers, part codes. Content sits in numbered cells.
- **Type:** wide grotesques (`Archivo Expanded`, `Anybody` at high width) for display, tiny 10-11px mono for the technical layer. Extreme scale contrast: 120px next to 10px, nothing in between.
- **Material:** bevel and flat color, **not** chrome. Metal appears only as a photographed object, if at all.
- **Motif (pick 2 max):** hazard stripes, target reticles, barcodes, arrow glyphs, ISO-style pictograms, dotted registration.
- **Signature control:** a segmented selector that reads like industrial equipment. Hard state change, no easing softness.
- **Trap to avoid:** turning it into brutalism. Brutalism is raw and careless; this is precision-engineered. Everything is aligned to 8px.

---

## 1999 - Chrome Orbital *(default)*

**World:** millennium advertising, liquid metal, The Matrix, satellite graphics, mobile network launch campaigns, chrome typography on TV idents.
**Feeling:** the future is arriving next Tuesday and it is going to be great.

```
ice       #EEF2F7      ink       #151722
silver    #C5CED8      blue      #244BDB
```

- **Composition:** one dominant typographic field plus one metal object. The object bleeds off-canvas or overlaps the type block. Asymmetric, two unequal zones, generous negative space.
- **Type:** wide geometric display (`Anybody`, `Michroma`, `Unbounded`) against plain neutral body copy. No distortion, no `scaleX()`.
- **Material:** mirror chrome on the hero object, the logo, and one edge. Brushed aluminium on the nav. Reading surfaces stay ice or white.
- **Motif (pick 2 max):** orbital rings, discs, ellipses, lens elements, star bursts with unequal arms, thin technical arcs.
- **Signature control:** something that physically rotates or snaps - a dial, a rotating selector, a carousel with real momentum.
- **Trap to avoid:** the raised grey card. If your chrome reads as a plain 3D bevel button, you skipped the horizon (see `materials.md` 1.A).

---

## 2001 - Aqua Lozenge

**World:** Mac OS X Aqua, iMac G3, iBook, pinstripes, candy-shell hardware, Sony VAIO, the software that was suddenly delicious.
**Feeling:** professional but edible. Serious work in a translucent case.

```
pinstripe #F3F5F8      graphite  #2A3038
aqua      #3E8FEF      bondi     #3FB3B3
```

- **Composition:** clear regions with defined frames. Toolbar on top, content below, status at the bottom. Pinstriped backdrop behind quiet white content areas.
- **Type:** neutral humanist (`Figtree`, `Instrument Sans`, or a genuine `Lucida Grande, Verdana` stack). Display is only modestly larger than body. Aqua did not shout.
- **Material:** aqua lozenges on controls, frosted candy on one panel, brushed metal on the window frame. **Exactly one bloom-highlighted default action per view.**
- **Motif (pick 2 max):** pinstripes, lozenge pills, drop-shadowed floating panels, the genie-style scale transition.
- **Signature control:** the tab strip or the segmented control. It should clunk into place, not fade.
- **Trap to avoid:** pill radius on everything. Aqua put pills on controls and right angles (or 6-10px) on panels and windows. All-pill reads as 2020 SaaS.

---

## 2003 - Plastic Pop / Cyber-Kawaii

**World:** Motorola and Nokia color screens, MSN Messenger, flip phones, holographic stickers, glitter gel pens, Japanese street fashion tech, teen magazine CD-ROMs.
**Feeling:** a toy you want in your pocket, in six colors, with a strap.

```
cream     #FFF9F1      ink       #251728
pink      #EF4AA8      lime      #C8EF73
```

- **Composition:** playful editorial. One expressive headline, one hero object or cut-out photo, one unambiguous action. Overlapping stickers and offset blocks, but on a grid.
- **Type:** friendly geometric or soft grotesque display (`Bricolage Grotesque`, `Unbounded`) with clean body copy. Never Comic Sans.
- **Material:** gel on every control, one holographic element, frosted candy on one panel. Reading surfaces flat cream.
- **Motif (pick 2 max):** 4-point sparkles (SVG, unequal arms, never emoji), bubbles, hearts used structurally, inflated 3D geometry, sticker outlines with a white keyline.
- **Signature control:** a color/variant switcher where the whole page re-tints. Make it real, not decorative.
- **Trap to avoid:** white text on pink or lime. Use `hsl(hue 80% 20%)` ink instead and measure it.

---

## Digital Archive *(cross-era overlay, not an era)*

Apply on top of any era when the brief is fundamentally **a list of media**: a discography, a video archive, a radio station, a case-study index, a player.

```
background #131820     panel     #232C38
text       #F1F5F8     accent    #73DCEA
```

- **Composition:** header, source list, detail panel, transport controls, metadata footer. Dense by design. `INFO_DENSITY 7-8`. No marketing hero.
- **Type:** mono for categories, codes, timecodes and durations only. Body stays in the sans.
- **Material:** bevel for panel frames, one gel or aqua treatment on the transport controls, thin hairline dividers.
- **Motif:** technical bands, tab rows, hairlines, level meters, scroll grips.
- **Hard rule:** if there is no real audio or video, **label the player as a demonstration and do not animate a progress bar as though something were playing.**
- **Trap to avoid:** operating-system cosplay. You are borrowing the information architecture of a media player, not simulating Windows.

---

## Component Map (applies to every era)

| Component | Treatment | Functional requirement |
|---|---|---|
| Primary button | Era's signature material, one per view | Real action. Default, hover, focus-visible, pressed, loading, disabled, error |
| Secondary button | Stable surface, defined border, no material | Lower visual weight, contrast still passes |
| Field | Flat interior, distinguishable border, never a material fill | Persistent label above, error below, no placeholder-as-label |
| Panel | Material frame, quiet content area | No clipping as content grows, no nested transparency |
| Tab | Selection changes shape or position, not just shine | Links for navigation, ARIA tab pattern for panels |
| Dialog | One material layer, never stacked blur | Initial focus, Escape, focus return, no trap |
| Selector / switcher | The signature control, most tactile element on the page | Changes real state, keyboard operable, selection distinct from hover |
| Nav | Brushed or flat, height <= 80px, one line at desktop | Visible focus on every item, mobile pattern declared |

---

## Intensity by product type

- **Work tool:** character concentrated in header, accents, and selected controls. Content areas stay quiet. `MATERIAL 3-4`.
- **Store / portfolio:** more scale, more overlap, a real hero object. `MATERIAL 6-8`.
- **Campaign / launch:** amplify the main artwork, keep reading, navigation and performance intact. `MATERIAL 9-10`, and the composition has to be strongest here, not weakest.

**Never ship all recipes to demonstrate range.** One era, developed completely, beats four sampled.
