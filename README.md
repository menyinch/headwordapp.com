# headwordapp.com

The Headword website: a landing page, `/faq/`, two guides under `/guides/`, `/support/`, `/privacy/`, `/appstore/` (a redirect to the App Store page), and four
redirect pages — `/ig/`, `/tt/` and their `/paid/` variants — the links in the Instagram and TikTok bios. Static HTML and one
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

The landing page's one action is the App Store link (app id 6807881378; released
2026-09-22), and the page carries the `apple-itunes-app` meta so Safari on iOS shows the
store's own banner. `/appstore/` is a one-line redirect to the same page, for bios, posts
and anywhere a bare apps.apple.com URL would be ugly.

`/ig/`, `/tt/`, `/ig/paid/` and `/tt/paid/` are one-line redirects (a meta refresh, no script)
so the social profiles link here once and never change. Before launch they go to the landing
page; at launch, change each page's URL to its App Store campaign link (tokens `instagram`,
`tiktok`, `instagram-paid`, `tiktok-paid`, made in App Store Connect → App Analytics →
Campaigns), so the store reports installs by source. The comment at the top of each page says
exactly where.

**Found by AI assistants (2026-10-28).** ChatGPT sent 10 of the app's first 29 downloads, so the site is written to be
read and cited by answer engines as well as people: `/faq/` (FAQPage data), two guides that answer the questions people
ask (`/guides/improve-english-vocabulary-for-work/`, `/guides/vocabulary-apps-for-work/`), `llms.txt`, `pricing.md`,
`robots.txt` (every crawler welcome, `/stats/` excepted) and `sitemap.xml`. Every claim on them is checked against the
app: when the app changes what is free, what Plus costs or where ads appear, update the FAQ, `pricing.md`, `llms.txt` and
the home page together, and bump their dates. The comparison guide describes other apps as their own App Store pages do;
re-check it every few months.

**IndexNow.** The 32-hex-character `.txt` file at the root is the site's IndexNow key (its name is its content).
After pushing a page change, run `./indexnow.sh` (every sitemap URL) or `./indexnow.sh /faq/` (one path) so Bing
and the other IndexNow engines crawl it at once. Keep `sitemap.xml`'s `lastmod` dates true when pages change.
