# GhostTv design preferences (approved 2026-11-05)

The approved thumbnail is `docs/img/thumbnail.jpg`. The art without text is `docs/img/thumbnail-art.jpg` (Gemini via `crew gemini`, 1376x768). Rebuild the text overlay with `docs/thumb.ps1`.

## Mood
- The user's own room at night: cozy, a little gothic, **clean and uncluttered** ("make it clean"). No sofa clutter, skulls, coffin shelves or extra props in the hero art.
- 35mm film look (Kodak Portra 800): fine grain, soft haze, natural light falloff. Never glossy CGI.

## Room elements (keep these)
- **Ceiling:** a plain **white** center panel washed soft lavender-violet, framed on all edges by a **black border of ornate embossed baroque tin tiles**. The tiles have deep-relief acanthus scrolls, quatrefoil cartouches and a rosette medallion in a beaded oval, in satin black with a faint violet sheen on the relief. **Only the border is ornate**; the center stays plain. A low camera angle keeps the border visible across the top.
- **Walls:** warm matte greige-taupe (mushroom beige), smooth. A dark forest-green wall is the alternative.
- **TV:** a large flat TV on a low dark wood console. The screen shows a dark launcher with one neat row of colorful tiles, and **bias light behind it fades cyan → violet → magenta** on the wall.
- **Right side:** one tall dark bookshelf with trailing ivy, warm yellow fairy lights and cream LED candles.
- **Signature:** a translucent ghost-like wisp of light curling from the lower left toward the TV (the "ghost" controlling the TV).
- **Left ~45 %:** calm, dark, empty wall for the title.

## Text overlay (docs/thumb.ps1)
- 1280x720 JPEG, quality 88. A left dark fade (12,6,18) goes from 200 alpha to 0 over 760 px. Make the gradient brush 2 px wider than the fill, or a seam line shows.
- Title: **GhostTv** in Segoe UI Black, 92 px, white.
- Accent bar above the title: forest green (70,104,60), 64x8.
- Subtitle "Claude drives your Fire TV": Segoe UI Semibold 34 px, soft lilac-white, on a **forest-green highlighter stroke** (44,64,38 at 235 alpha). The stroke is a slightly skewed polygon, like a marker swipe.
- Lines: "Fire Stick + Samsung, over adb" (soft) and "Projectivy · debloat · macros" in sage green (150,186,128). Write `·` as `[char]0xB7` (the .ps1 has no BOM).
- Keep all text clear of the TV and the wisp.

## Palette
| Role | Color |
|---|---|
| Night base | #0C0612 plum-black |
| Bias light | cyan #3FD6E8 → violet #8A5CFF → magenta #F062AC |
| Warm lights | candle amber #F4C46A |
| Walls | greige-taupe #6E6259 (alt forest green #2C4026) |
| Ceiling border | satin black #0E0B12 with violet sheen |
| Accent / highlighter | forest green #2C4026 / #46683C, sage text #96BA80 |

## Prompt rules (Gemini)
- Name every element concretely (tile motifs, wall paint, light colors). Ask for "tidy, uncluttered, polished". End with "no text, no letters, no logos, no watermarks, no people".
- Avoid wording that reads as a UI clone. A prompt describing a detailed "streaming-launcher home screen" UI got refused, so keep the screen as "dark launcher with one row of colorful tiles".
- Review loop: compose with the text → check the fit (TV not under the title, wisp visible but subtle, border detailed) → at most 3 reprompts.
