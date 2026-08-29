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

Homepage section order is the order of the `sections:` list in `content/_index.md`.

| What you want to change | File |
| --- | --- |
| Bio text, role, affiliations, social links | `content/authors/admin/_index.md` (body text below the closing `---`) |
| **Projects** - one folder per project | `content/project/<slug>/index.md` |
| Project card on the homepage | comes from the project page's `title`, `summary` (or first paragraph if blank) and `featured.*` image |
| Which projects sit where in the 2x2 matrix | `layouts/partials/blocks/proj_matrix.html` |
| Which papers/posts show under a project | the `projects:` list in each publication's or post's front matter |
| **Publications** - one folder per paper | `content/publication/<slug>/index.md` (+ `cite.bib`, `<slug>.pdf` alongside) |
| Which publication group a paper lands in | `publication_types:` - `'2'` peer-reviewed, `'3'` preprint |
| **Blogposts** - one folder per post | `content/post/<slug>/index.md`; set `venue:` (e.g. LessWrong) and `external_link:` |
| **Talks** - markdown list with tag pills | `content/_index.md`, the `talks` block |
| **Organising & teaching** - markdown lists | `content/_index.md`, the `teaching` block |
| Section titles, order, add/remove a section | `content/_index.md`, the `sections:` list |
| Nav bar tabs | `config/_default/menus.yaml` |
| Site title, base URL, theme modules | `config/_default/config.yaml` |
| SEO description, analytics, features | `config/_default/params.yaml` |
| Colours | `data/themes/my_theme_day.toml` |
| All custom styling (nav, tags, cards, figures) | `assets/scss/custom.scss` |
| PDFs, posters and other files served as-is | `static/uploads/` |

### Talk tags

Each talk line carries pills written as inline HTML:

- kind: `<span class="kind-tag k-invited">invited</span>` (also `k-selected`, `k-panel`)
- award: `<span class="award-tag">Best Paper Award</span>`
- project: `<a class="proj-tag t-circuits" href="/project/decision-circuits/">decision circuits</a>`
  (classes `t-repr`, `t-removal`, `t-circuits`, `t-decision`)

### Adding a new item

Copy an existing sibling folder and edit it - the front matter is the template. A
publication folder can hold its own `cite.bib` and `<slug>.pdf`; the theme shows the
matching buttons automatically. Fields you leave empty simply do not render.

## Deploying

Pushing to `main` triggers `.github/workflows/hugo.yaml`, which builds with Hugo and publishes to
GitHub Pages. The Hugo version is pinned in that workflow — keep it in sync with `serve.sh`.

## Licence

Site content © Diksha Gupta. The underlying Wowchemy theme code is MIT licensed — see
`LICENSE.md`.
