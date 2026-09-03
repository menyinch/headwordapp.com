# Design

Paper and ink. The site is the app's own material typeset for the web: the entry's serif, the system sans around it, one red taken from the app icon. The values below are the ones the app ships (LemmaColor, LemmaType, AccentColor).

## Colors

| Token | Light | Dark | Use |
|---|---|---|---|
| --paper | #faf8f4 | #16130f | page background |
| --ink | #1e1b19 | #f0ece6 | text |
| --ink-2 | #59544f | #c7c2be | quiet text: apparatus, captions, labels (7:1 on paper) |
| --rule | rgba(30,27,25,.18) | rgba(240,236,230,.2) | hairlines |
| --accent | #8c2619 | #d97359 | the icon's red: links, the one button, the headword's full stop |
| --on-accent | #ffffff | #1a100d | text on an accent fill (the dark accent is too light to carry white) |
| --card | #ffffff | #221e19 | the widget card, one step off the paper |

Strategy: restrained. Tinted neutrals and one accent under 10% of the surface. The app is calm paper; the site does not get louder than the app.

## Typography

- Display and entry: the system serif, New York on Apple devices. Stack: `ui-serif, "New York", "Iowan Old Style", "Palatino Linotype", Palatino, Georgia, "Times New Roman", serif`. Weight 400 only. Used for the headword, the senses, section headlines, captions and the site name.
- Everything else: the system sans. Stack: `-apple-system, BlinkMacSystemFont, "SF Pro Text", "Segoe UI", Helvetica, Arial, sans-serif`.
- No web fonts, ever (see PRODUCT.md).

Scale (desktop, fluid with clamp): headword clamp(3.4rem, 9vw, 7rem); sense 1.5rem; section headline clamp(1.9rem, 3.4vw, 2.75rem); subheads 1.55rem; body 1.0625rem (17px), line-height 1.55; apparatus and quiet text 0.95 to 1.05rem; labels 0.8rem uppercase, letter-spacing .14em.

## Apparatus labels
Section labels are the apparatus a dictionary entry uses and the app already sets: IN USE, USAGE, EDITIONS, ORIGIN, SEE ALSO. Small tracked sans in --ink-2, as the app sets "IN USE". They are the page's section grammar; do not add other eyebrows.

## Layout
- Content column 40rem for reading pages (Support, Privacy). The landing page runs wider: a 72rem frame, hero in two columns (entry 7 : widget 5) from 60rem up, single column below.
- Sections are separated by one hairline (--rule) and generous space (clamp(3rem, 7vw, 5rem)). No cards except the widget card and the phone frames.
- Screens sit in a thin-ruled rounded frame (radius 2.4rem, 1px --rule) cropped to their top; captions beneath in the serif.

## Components
- The one button: 3.25rem tall pill, --accent fill, --on-accent text, 1.0625rem medium. Hover darkens the fill. Focus: 2px --accent outline offset 3px.
- Links: --accent, underline 1px, offset .15em; 2px on hover.
- The headword's full stop: a --accent circle .17em wide after the headword, the icon's dot at type size.

## Motion
One page-load moment: the headword's letters bloom in (opacity and a 0.35em rise), staggered 45ms per letter, ease-out quint, as the app's welcome screen does. Nothing else animates except link colour (120ms). All of it is removed under prefers-reduced-motion.

## Imagery
Real captures from the app (lemma-app/marketing/captures/en), cropped to the top 65% and served at 800px wide as WebP from /img. The Lock Screen widget capture is the hero image and the share image. No illustrations, no device bezels drawn by hand.
