# Motion

Y2K motion is **mechanical, not cinematic**. Things snap, settle, clunk and spin. They do not float, fade or drift unless they are genuinely ambient.

---

## 1. The signature control

Every project gets exactly one, and it must change real state.

| Product | Signature control |
|---|---|
| Music / festival | Track or artist switcher with momentum |
| Store | Colorway switcher that re-tints the page |
| Portfolio | Project dial or snapping carousel |
| Tool / SaaS | Tab strip or segmented control with a physical clunk |
| Archive / player | Transport controls with a real scrub |

A decorative hero animation is **not** a signature control. If the only motion on the page is ambient, the page failed this section.

---

## 2. Timing

```css
--dur-feedback: 140ms;   /* 120-180: press, hover, toggle          */
--dur-panel:    220ms;   /* 180-280: panels, tabs, dialogs, reveals */
--dur-entrance: 320ms;   /* one-time page entrance, max            */
--ambient:      60s;     /* 40-90s: orbit, slow specular drift      */

--ease-mercury: cubic-bezier(.2, .9, .1, 1);   /* liquid metal settling */
--ease-clunk:   cubic-bezier(.34, 1.3, .48, 1);/* mechanical overshoot  */
--ease-out:     cubic-bezier(.22, .61, .36, 1);
```

Use `--ease-mercury` for anything that should feel like weight arriving. Use `--ease-clunk` (slight overshoot) for selectors and tabs - that overshoot **is** the Y2K feel.

---

## 3. Core patterns

### Press
```css
.control { transition: transform 220ms var(--ease-mercury), box-shadow 220ms var(--ease-mercury); }
.control:active { transform: scale(.97); transition-duration: 90ms; }
```
Fast down, slower up. Never change width, padding or layout on hover.

### Specular sweep (hover, once)
```css
.sweep { position: relative; overflow: hidden; }
.sweep::after {
  content: ""; position: absolute; inset: 0;
  background: linear-gradient(105deg, transparent 38%, rgba(255,255,255,.75) 50%, transparent 62%);
  transform: translateX(-120%);
  pointer-events: none;
}
.sweep:hover::after { transform: translateX(120%); transition: transform 450ms var(--ease-out); }
```
Once per hover. Not a loop. Not on more than three elements per page.

### Snap selector
```css
.indicator { transition: transform 260ms var(--ease-clunk), width 260ms var(--ease-clunk); }
```
Move a single indicator element rather than restyling each option. The overshoot sells the mechanism.

### Ambient orbit
```css
@keyframes orbit { to { transform: rotate(360deg); } }
.orbit { animation: orbit var(--ambient) linear infinite; will-change: transform; }
```
One per page. Decorative, `aria-hidden`, `pointer-events: none`. Slow enough that a still screenshot looks identical.

### Entrance
Content must be readable and interactive immediately. Stagger at most 60ms per item, at most 6 items, and never gate the primary CTA behind it.

---

## 4. Reduced motion

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: .01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: .01ms !important;
    scroll-behavior: auto !important;
  }
}
```
Then verify by hand: orbit stopped, parallax off, sweep off, reveals showing their final state, **and the signature control still usable** (state changes instantly instead of animating). Killing motion must never kill function.

---

## 5. Performance

- Animate `transform` and `opacity` only. Never `top`, `left`, `width`, `height`, `box-shadow` in a loop.
- `will-change` on the animating element only, removed when idle.
- No `window.addEventListener('scroll')`. Use `IntersectionObserver`, CSS scroll-driven animations, or the framework's scroll primitive.
- `useEffect` animations get strict cleanup.
- Max one ambient loop. Every looping animation is a permanent CPU cost on a laptop with the page in a background tab.

---

## 6. Banned

- Autoplay audio. Absolutely, in every era, without exception.
- Custom cursors and cursor trails.
- Scroll hijacking.
- Fake loading screens, fake progress bars, fake "connecting" states.
- `<blink>`, flashing above 3Hz, strobing.
- `<marquee>` carrying body content. **One** marquee with real ticker data is allowed as a wink, paused on hover and on reduced motion.
- Tying business logic to `animationend`.
- Looping iridescence, looping sweeps, looping glow pulses.
