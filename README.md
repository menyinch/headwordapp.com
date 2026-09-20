# headwordapp.com

The Headword website: a landing page, `/support/`, `/privacy/`, and four redirect pages —
`/ig/`, `/tt/` and their `/paid/` variants — the links in the Instagram and TikTok bios. Static HTML and one
stylesheet, served by GitHub Pages at https://headwordapp.com. Nothing loads from a third
party — no fonts, scripts or analytics — so the privacy page can say so. The Instagram and
TikTok glyphs in every footer are inline SVG for the same reason (the TikTok mark is Simple
Icons' CC0 path); they link to `@headword.app` on each platform.

The app itself lives in a private repo; the App Store listing's support and privacy URLs
point here. `icon.png` is the app icon's light appearance, rendered by the app's `make icon`.

`img/` holds the app's own captures (`marketing/captures/en` in the app repo), cropped to
their top and resized to 800px WebP, the Lock Screen widget flattened onto white, and
`og.jpg`, the share image. Regenerate them from the app repo when the screens change.

`.agents/context/PRODUCT.md` and `DESIGN.md` describe who the site is for and how it is
typeset, for anyone (or any tool) changing it.

Before launch the landing page's one action is a mailto link asking to be told when the app
ships. At launch, replace that link's `href` and the line beneath it with the App Store URL.

`/ig/`, `/tt/`, `/ig/paid/` and `/tt/paid/` are one-line redirects (a meta refresh, no script)
so the social profiles link here once and never change. Before launch they go to the landing
page; at launch, change each page's URL to its App Store campaign link (tokens `instagram`,
`tiktok`, `instagram-paid`, `tiktok-paid`, made in App Store Connect → App Analytics →
Campaigns), so the store reports installs by source. The comment at the top of each page says
exactly where.
