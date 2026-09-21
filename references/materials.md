# Material Physics

Read this before writing any chrome, gel, aqua, frost, holographic or bevel CSS.
Everything here is adaptable, not sacred. The **principles** are the point; the hex values are a starting kit.

---

## 0. Why AI chrome looks fake

Four causes, in order of damage:

1. **Too few stops.** A 2-3 stop grey gradient is a plastic card. Metal needs 5+.
2. **No horizon.** Real reflective metal shows a bright sky and a dark ground meeting at a hard line. Smooth gradients have no line, so the brain reads "painted surface", not "reflection".
3. **Even bands.** Equal-width bands read as a decorative ribbon. Reflections compress toward the horizon.
4. **No grain.** Pure CSS gradients are mathematically clean. Period artwork was rendered and printed. 4% noise fixes it instantly.

---

## 1. Chrome

### 1.A Vertical chrome (the workhorse)

```css
:root {
  /* sky: wide, cool, low contrast | ground: narrow, warm, high contrast */
  --chrome-v: linear-gradient(
    180deg,
    #FBFDFF   0%,   /* sky highlight            */
    #DCE6EF  12%,
    #AEBCCB  27%,   /* sky midtone              */
    #E6EEF6  41%,
    #F4F9FD  46%,   /* horizon glow             */
    #4E5A6E  48%,   /* HORIZON  <- 2% hard stop */
    #7C8A9C  58%,   /* ground                   */
    #C3CEDA  72%,
    #98A5B5  86%,
    #E4ECF4 100%    /* bounce light off the floor */
  );
  --chrome-edge: #6C7A8C;
}
```

Tuning:
- Move the horizon between **44% and 56%** to change the read. Above 50% the object looks lit from below.
- Widen the `4E5A6E` band for a heavier, darker metal. Narrow it for polished show-chrome.
- Warm the ground (`#6E6A66`) against a cool sky for chrome that sits on a cream page.

### 1.B Brushed aluminium

```css
.brushed {
  background:
    repeating-linear-gradient(90deg,
      rgba(255,255,255,.55) 0 1px,
      rgba(0,0,0,.05)       1px 2px,
      transparent           2px 3px),
    linear-gradient(180deg, #E9EDF1, #C3CAD2 52%, #AFB7C1 54%, #D9DEE4);
  border: 1px solid #9BA4AE;
}
```
Brushed metal is the **quiet** chrome. Use it on navs, toolbars and panels where mirror chrome would be too loud.

### 1.C Chrome type (display only, 40px+)

```css
.chrome-text {
  color: #93A3B5;                       /* mandatory fallback */
  background: var(--chrome-v);
  -webkit-background-clip: text;
          background-clip: text;
  -webkit-text-fill-color: transparent;
  -webkit-text-stroke: 1px rgba(21,23,34,.6);
  paint-order: stroke fill;
  filter:
    drop-shadow(0  1px 0   rgba(255,255,255,.75))
    drop-shadow(0  3px 8px rgba(21,23,34,.35));
}
```
Rules: never for body, labels, buttons or nav. Max two instances per page. The text must also exist as real selectable text, and the information must not depend on it being visible.

### 1.D Chrome object (hero orbit / disc / lozenge)

Do not use a plain `radial-gradient`. A sphere reflects the same horizon, curved:

```css
.orb {
  background:
    radial-gradient(120% 90% at 32% 24%, rgba(255,255,255,.95), transparent 42%), /* specular hit */
    conic-gradient(from 200deg at 50% 50%,
      #F4F8FC, #A9B7C6, #EDF3F9, #3F4A5C, #8D9AAB, #DFE7EF, #5A6778, #F4F8FC);
  box-shadow:
    inset 0 -24px 40px -22px rgba(255,255,255,.9),   /* bounce from below   */
    inset 0  10px 26px -16px rgba(18,24,36,.65),     /* terminator          */
    0 36px 60px -28px rgba(18,24,36,.55);            /* contact shadow      */
  border-radius: 50%;
}
```
The `conic-gradient` gives the banded, rotating-reflection look that reads as metal. Add `.grain` on top.

---

## 2. Gel

Four layers, always in this order, one light direction for the whole page.

```css
.gel {
  --h: 322; --s: 84%;          /* hot pink. change hue only. */
  position: relative;
  border: 1px solid hsl(var(--h) var(--s) 34%);   /* 4. ring, hue-darkened */
  border-radius: 14px;
  padding: 14px 22px;
  color: #fff;
  background: linear-gradient(180deg,                /* 1. body */
    hsl(var(--h) var(--s) 68%)   0%,
    hsl(var(--h) var(--s) 57%)  46%,
    hsl(var(--h) var(--s) 51%)  62%,
    hsl(var(--h) var(--s) 62%) 100%);
  box-shadow:
    inset 0 -12px 20px -8px hsl(var(--h) 96% 76% / .95),  /* 3. internal bounce */
    inset 0   1px  0      hsl(var(--h) 100% 93% / .9),    /*    rim light       */
    0 1px 0 hsl(var(--h) var(--s) 26% / .5),
    0 10px 20px -8px hsl(var(--h) 55% 18% / .45);         /*    contact shadow  */
}
.gel::before {                                     /* 2. specular cap */
  content: "";
  position: absolute;
  inset: 2px 3px auto 3px;
  height: 44%;
  border-radius: 12px 12px 10px 10px / 12px 12px 16px 16px;
  background: linear-gradient(180deg,
    rgba(255,255,255,.92),
    rgba(255,255,255,.34) 58%,
    rgba(255,255,255,0));
  pointer-events: none;
}
.gel:active { transform: scale(.97); box-shadow: inset 0 2px 6px hsl(var(--h) 70% 25% / .45); }
```

**Contrast warning:** white text on a vivid pink or lime gel usually fails 4.5:1. On lime, yellow and cyan gels, use the hue at `lightness 20%` as the label color, not white. Measure the darkest body stop.

---

## 3. Aqua (2001)

Gel, plus pill radius, plus pinstripes on the surrounding surface, plus a bloom on **one** default action.

```css
.aqua {
  position: relative;
  border-radius: 999px;
  border: 1px solid rgba(20,44,78,.45);
  padding: 9px 20px;
  color: #10243C;
  background: linear-gradient(180deg,
    #EEF6FF 0%, #C4DDF9 33%, #8BBCF0 49%,
    #4F93E1 51%, #7CB6EE 76%, #CBE4FB 100%);
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,.95),
    inset 0 -8px 12px -6px rgba(255,255,255,.9),
    0 1px 2px rgba(12,28,52,.35);
}
.aqua::after {
  content: ""; position: absolute; inset: 1px 4px auto 4px; height: 46%;
  border-radius: 999px;
  background: linear-gradient(180deg, rgba(255,255,255,.95), rgba(255,255,255,.15));
  pointer-events: none;
}
.aqua[data-default="true"] {
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,.95),
    0 0 0 3px rgba(62,143,239,.28),
    0 0 20px rgba(62,143,239,.5);
}

.pinstripe {
  background-color: #F3F6FA;
  background-image: repeating-linear-gradient(0deg,
    rgba(22,38,60,.055) 0 1px, transparent 1px 4px);
}
```
Only **one** `data-default` button per view. Aqua's bloom was a hierarchy signal, not decoration.

---

## 4. Frosted plastic (iMac candy shell)

Blur alone is glassmorphism. What makes it plastic is the **rim light** and the **visible thickness**.

```css
.frost {
  background: hsl(186 72% 60% / .26);
  backdrop-filter: blur(14px) saturate(170%);
  border: 1px solid hsl(186 82% 90% / .6);
  border-radius: 18px;
  box-shadow:
    inset 0  1px  0     rgba(255,255,255,.85),            /* top rim light   */
    inset 0 -20px 26px -20px hsl(186 90% 38% / .65),      /* thickness below */
    0 14px 34px -14px rgba(8,30,45,.42);
}
@media (prefers-reduced-transparency: reduce) {
  .frost { backdrop-filter: none; background: hsl(186 52% 84%); }
}
```
Never stack a `.frost` inside another `.frost`. One transparent layer per z-stack.

---

## 5. Iridescence / holographic

```css
.holo { position: relative; isolation: isolate; }
.holo::after {
  content: ""; position: absolute; inset: 0; border-radius: inherit;
  background: conic-gradient(from calc(var(--hue-shift, 0) * 1deg),
    #FF6EC4, #7AFCFF, #FDFC47, #74F2CE, #A06BFF, #FF6EC4);
  mix-blend-mode: color-dodge;
  opacity: 0;
  transition: opacity 240ms ease;
  pointer-events: none;
}
.holo:hover::after, .holo:focus-visible::after { opacity: .45; }
```
Drive `--hue-shift` from pointer position on hover. **Never loop it on its own** - a permanently cycling rainbow is the fastest way to look like a 2022 NFT page. One holo element per page.

---

## 6. Grain (mandatory at `MATERIAL_INTENSITY >= 5`)

```css
.grain { position: relative; }
.grain::after {
  content: ""; position: absolute; inset: 0; pointer-events: none;
  opacity: .05; mix-blend-mode: overlay; border-radius: inherit;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='160' height='160'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='.85' numOctaves='3' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='160' height='160' filter='url(%23n)'/%3E%3C/svg%3E");
}
```
3% on light surfaces, 5-6% on dark. Apply to material surfaces, not to text containers.

---

## 7. Bevel (1997 / Digital Archive only)

```css
.bevel {
  background: #C9CFD8;
  border: 2px solid;
  border-color: #FFFFFF #6E7683 #6E7683 #FFFFFF;  /* light TL, dark BR, zero blur */
}
.bevel:active { border-color: #6E7683 #FFFFFF #FFFFFF #6E7683; }
```
Bevel and chrome are different material languages. Do not put them on the same component.

---

## 8. Focus that survives on any material

A single-color focus ring disappears on chrome. Use a dual ring.

```css
:where(a, button, input, select, textarea, [tabindex]):focus-visible {
  outline: 3px solid #0B0E14;
  outline-offset: 2px;
  box-shadow: 0 0 0 2px #FFFFFF;   /* white gap sits between element and dark ring */
  border-radius: inherit;
}
```
Verify it on: ice background, chrome band, dark panel, and a saturated gel.

---

## 9. Starter token block

```css
:root {
  /* surfaces */
  --bg:            #EEF2F7;
  --surface:       #FFFFFF;
  --surface-raised:#F6F9FC;
  --panel-dark:    #151722;

  /* ink */
  --text:          #151722;
  --text-muted:    #5A6473;
  --on-accent:     #FFFFFF;

  /* brand (separate from status) */
  --accent:        #244BDB;
  --accent-ink:    #0F2A8F;

  /* status, never brand-tinted */
  --success:       #128A4F;
  --warning:       #B25E00;
  --error:         #C02233;

  /* structure */
  --border:        #C5CED8;
  --focus:         #0B0E14;

  /* radii: state the rule, then follow it everywhere */
  --r-control:     999px;   /* controls are pill      */
  --r-panel:       12px;    /* panels are 12          */
  --r-media:       4px;     /* media is nearly square */

  /* elevation */
  --shadow-1: 0 1px 2px rgba(18,24,36,.16);
  --shadow-2: 0 10px 24px -12px rgba(18,24,36,.45);
  --shadow-3: 0 36px 60px -28px rgba(18,24,36,.55);

  /* timing */
  --dur-feedback: 140ms;
  --dur-panel:    220ms;
  --ease-mercury: cubic-bezier(.2,.9,.1,1);
}
```

Swap the palette per era from `visual-recipes.md`. Keep the token **names** stable so components do not need rewriting.
