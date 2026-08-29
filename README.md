# dikshagup.github.io

Source for my personal academic website: <https://dikshagup.github.io>

The site is a static site generated with [Hugo](https://gohugo.io) using the
[Wowchemy](https://github.com/wowchemy/wowchemy-hugo-themes) academic theme, pulled in as a
Hugo Module (see `config/_default/config.yaml`). There is nothing to vendor or check out —
`hugo` fetches the theme itself on first build.

## Preview locally

Always render locally and check the result in a browser before pushing — pushing to `main`
deploys straight to the live site.

```bash
./serve.sh
```

Then open <http://localhost:1313>. The server live-reloads as you edit.

The script bootstraps a pinned, project-local Hugo into `.tools/` (gitignored) on first run, so
it matches the version CI builds with. It needs Go on your `PATH` for Hugo Modules:

```bash
brew install go
```

If you rename or delete a folder under `content/`, **restart the server**. Hugo's
live-reload keeps the old page in memory, so you will see both the old and the new
version until you stop it with Ctrl+C and run `./serve.sh` again. Edits to existing
files reload fine; it is only added/removed/renamed directories that need this.

Other commands:

```bash
./serve.sh build     # one-off production build into ./public — run this before pushing
./serve.sh drafts    # preview including drafts and future-dated content
```

## Editing content

Everything below is the full set of files you touch. Homepage section order is the
order of the `sections:` list in `content/_index.md`.

| What you want to change | File |
| --- | --- |
| Bio text, role, affiliations, social links, status emoji | `content/authors/admin/_index.md` (body text is below the closing `---` on line 81) |
| **Projects** — one folder per project | `content/project/<slug>/index.md` |
| Which papers show under a project | the `projects:` list in each publication's front matter, not the project page |
| **Publications** — one folder per paper | `content/publication/<slug>/index.md` |
| Which publication group a paper lands in | `publication_types:` in its front matter — `'2'` peer-reviewed, `'3'` preprint, `'1'` conference abstract |
| **Blogposts** — one folder per post | `content/post/<slug>/index.md` |
| **Talks** — plain markdown list | `content/_index.md`, `talks` block (~line 145) |
| **Teaching & organizing** — plain markdown list | `content/_index.md`, `teaching` block (~line 167) |
| Section titles, order, add/remove a section | `content/_index.md`, the `sections:` list |
| Nav bar tabs | `config/_default/menus.yaml` |
| Site title, base URL, theme modules | `config/_default/config.yaml` |
| SEO description, analytics, theme, features | `config/_default/params.yaml` |
| Colours | `data/themes/my_theme_day.toml` |
| Custom CSS (incl. the nav breakpoint) | `assets/scss/custom.scss` |
| Wording of theme labels, e.g. "Conference abstract" | `i18n/en.yaml` |
| PDFs, CV, and other files served as-is | `static/uploads/` |

### Adding a new item

Copy an existing sibling folder and edit it — the front matter is the template.
A publication or post folder can also hold its own `featured.jpg`, `cite.bib`, and
PDF; the theme picks those up automatically and shows the matching buttons. Fields
you leave empty simply do not render.

### Placeholders still to replace

- `content/project/*/index.md` — all four project names, summaries and dates
- `content/post/placeholder-post-1`, `-2` — delete these folders once you have real posts
- the `teaching` block in `content/_index.md` — all six rows
- the `projects:` field in each publication — check the project assignments are right

## Deploying

Pushing to `main` triggers `.github/workflows/hugo.yaml`, which builds with Hugo and publishes to
GitHub Pages. The Hugo version is pinned in that workflow — keep it in sync with `serve.sh`.

## Licence

Site content © Diksha Gupta. The underlying Wowchemy theme code is MIT licensed — see
`LICENSE.md`.
