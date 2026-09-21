# Quality Gate

Run this before delivering. Do not substitute an invented quality score for observable evidence.
A gate that cannot be honestly ticked means the work is not done.

---

## 1. Mechanical Y2K gates

Countable. No judgment required. Any failure blocks delivery.

- [ ] Design read stated: page kind, audience, **MODE and ERA when MODE=Y2K**, materials, signature control.
- [ ] All three dials stated explicitly (`MATERIAL_INTENSITY`, `MOTION_INTENSITY`, `INFO_DENSITY`).
- [ ] **One era or adjacent mode only.** No 1999 chrome next to 2003 gel, 1997 bevel, Frutiger Aero nature-tech or Apple Web minimalism.
- [ ] Every chrome gradient: **>= 5 stops**, **>= 1 stop pair under 2% apart**, unequal band widths, defined outer edge.
- [ ] Every gel: body + specular cap + internal bounce + hue-darkened ring. One light direction page-wide.
- [ ] Grain overlay present on material surfaces if `MATERIAL_INTENSITY >= 5`.
- [ ] No chrome, gradient-fill or outlined type below 32px. Max 2 chrome-type instances.
- [ ] Max **2** decorative motif families in any single view.
- [ ] Max **3** type families. Max **3** radius families, following a stated rule.
- [ ] Exactly **1** signature control, and it changes real state.
- [ ] Max **1** ambient loop. Zero looping sweeps or looping iridescence.
- [ ] >= 4 distinct layout families across 8 sections. No 3 consecutive identical splits.
- [ ] Zero em-dashes and zero decorative en-dashes in any user-visible string.
- [ ] Zero items from `anti-slop.md` sections A-F present.

---

## 2. The three tests

- [ ] **Grayscale test.** Desaturated screenshot still has one clear focal point and one clear priority action.
- [ ] **Reframe test.** With every material effect removed, the page does not collapse into a generic 2024 template.
- [ ] **Era test.** You can name one real 1997-2004 artifact this page could sit beside.

---

## 3. Visual identity

- [ ] One direction dominates; materials, type and composition all support it.
- [ ] Focal point and priority action readable without reading the whole page.
- [ ] Lighting direction, edge treatment, radii and depth consistent across every component.
- [ ] No motif without a compositional purpose. No component that looks imported from another system.
- [ ] Quiet surfaces reserved for reading, forms and tasks.

---

## 4. Functionality

- [ ] Primary action walked end to end.
- [ ] Navigation, controls, selection, validation, loading and empty states exercised.
- [ ] Demo data clearly labeled. No simulated integration presented as real.
- [ ] Existing routes, data shape and business logic unchanged in a restyle.
- [ ] No regression in the flow that existed before the redesign.

---

## 5. Responsive

Test cases, not mandatory breakpoints.

- [ ] 390px: recomposed, not shrunk. One material moment above the fold.
- [ ] 320px: no horizontal page scroll, no clipped controls, no overlap.
- [ ] 1440px: composition still intentional, not stretched.
- [ ] 200% zoom, long strings, multi-line errors, fallback font metrics all survive.
- [ ] Nav renders on one line at desktop, height <= 80px, and has a declared mobile pattern.

---

## 6. Accessibility

- [ ] Contrast measured against the **actual rendered surface**, including the darkest and lightest band of every material. Not a single token pair.
- [ ] 4.5:1 body, 3:1 large text, 3:1 for colors identifying controls and states.
- [ ] Gradient text has a solid `color` fallback and never carries unique information.
- [ ] Focus visible on ice, chrome, dark panel and saturated gel (dual ring).
- [ ] Full keyboard pass: order, visible focus, dialog focus and return, Escape, no traps.
- [ ] State never signaled by color or shine alone.
- [ ] `prefers-reduced-motion`: ambient motion off, reveals at final state, **signature control still works**.
- [ ] `prefers-reduced-transparency`: solid fallbacks in place.
- [ ] `prefers-contrast: more` and `forced-colors: active`: focus, controls, states and essential text remain visible; decorative materials can disappear.
- [ ] Decorative material is `aria-hidden` and `pointer-events: none`.
- [ ] Gel text contrast measured against its darkest rendered stop; white text is not assumed safe on vivid hues.
- [ ] Accessible names on functional icons; alternatives for informative images.
- [ ] Touch targets 44x44px (this skill's design standard, not the WCAG 2.5.8 AA minimum).

Do not claim full WCAG compliance from this partial checklist.

---

## 7. Evidence

- [ ] Used the project's own package manager and defined commands. Did not assume `npm run build` exists.
- [ ] Every command run is reported with its result, including preexisting failures not caused by this change.
- [ ] Screenshots, if any, were **opened and looked at**. Generating them is not reviewing them.
- [ ] Where no browser or test tooling was available, said so and listed exactly what was not verified.
- [ ] No self-review presented as user validation.

---

## 8. Acceptance cases

Proposed tests for the target environment. Their presence here does not mean an agent has run them.

**A. Open brief.**
*"Build me a Y2K landing page for a music festival."*
Expected: declare era and dials, ship the prototype, label fictitious dates, artists and links as demo content. Do not stall on a research process.

**B. Constrained restyle.**
*"Apply Y2K styling to this React store without changing checkout or routes."*
Expected: checkout, routes and logic preserved; tokens and components adapted inside the existing stack; flow verified. Do not create a parallel project instead of editing the real one.

**C. Specification only.**
*"Define a Y2K interface for a media player, no code."*
Expected: composition, tokens, controls, states, interactions, acceptance criteria. Do not generate an app or imply one exists.

**D. Restrained expressiveness.**
*"Subtle Y2K for a tool with many tables, no animations."*
Expected: `MATERIAL 3 / MOTION 1 / DENSITY 7`. Character in header, accents and selected controls. Density and readability preserved. No hero displacing the task.

**E. Bold brief.**
*"Go completely wild, full Y2K, this is a fashion drop."*
Expected: `MATERIAL 9-10`. A real dimensional hero object, a page-retinting variant switcher, one holographic element. Composition gets **stronger**, not weaker. Accessibility floor still holds. Do not hedge into a tasteful minimal page.

**F. No activation.**
*"Fix an authentication error"* or *"Explain the Y2K bug."*
Expected: do not redesign anything and do not activate on a keyword match.
