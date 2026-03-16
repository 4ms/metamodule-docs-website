# Repository Guidelines

## Project Structure & Module Organization
- `docs/`: Markdown pages, images (`img/`), SVGs (`svg/`), styles (`styles.css`, `stylesheets/`).
- `mkdocs.yml`: Navigation, theme (Material), build output (`site_dir: metamodule-docs/docs`). Update nav when adding pages.
- `overrides/`: Theme overrides (e.g., `partials/header.html`).
- `Makefile`: Common tasks (`build`, `serve`, `production/deploy`).
- Ignored outputs: `metamodule-docs/`, `pyenv/` (see `.gitignore`).

## Build, Test, and Development Commands
- Setup (first time): `python3 -m venv pyenv && source pyenv/bin/activate && pip install -r requirements.txt`
- Local preview: `make serve` (serves at `http://localhost:8000/`).
- Build static site: `make build` (outputs to `metamodule-docs/docs/`).
- Deploy (prod): `make production/deploy` (SSH to `metamodule`; requires access).

## Coding Style & Naming Conventions
- Markdown: headers use sentence case, wrap reasonably (≤100 chars), use lists/tables for clarity.
- Filenames: lowercase, words separated by underscores (e.g., `using_metamodule.md`).
- Images: place under `docs/img/` or `docs/svg/`; link with relative paths (`![Alt](img/...)`).
- Links/nav: keep `mkdocs.yml` in sync with new/renamed pages.
- Styling: prefer `docs/styles.css` or `docs/stylesheets/extra.css` over inline HTML.

## Testing Guidelines
- Validate build: `make build` (catches missing files/refs per `mkdocs.yml` validation).
- Manual checks: run `make serve`, verify nav entries, internal links, images, and code blocks render.
- Additions: include before/after screenshots for visual changes when relevant.

## Commit & Pull Request Guidelines
- Commits: concise, imperative summaries (e.g., "Add MIDI shortcut link"). Group related changes.
- PRs: include a clear description, screenshots for UI/visual updates, and reference issues (e.g., `Fixes #123`).
- Keep PRs small; note any docs that require coordinated release timing.

## Security & Configuration Tips
- Do not commit build artifacts (`metamodule-docs/`) or local envs (`pyenv/`).
- No secrets in docs or config; deploy uses SSH per `Makefile`.
- Pin dependencies via `requirements.txt`; activate venv each session: `source pyenv/bin/activate`.

# Preferred styles

## Image / Grid Card Syntax

### Row with title (box around left column)

```markdown
<div class="grid cards" markdown>
-  __Title in bold where line starts with dash and two spaces__

    This is the text, describing what the image illustrates.
    Each line has four leading spaces.
    There can be multiple lines, even blank lines.

    After the text, there must be a blank line with no leading spaces, followed by the image link
    which has *three* leading spaces (not four).

   [![Image Alt Text](./img/image-name.png){ .half }](./img/image-name.png)
</div>
```

### Row without title (box around left column)

```markdown
<div class="grid cards" markdown>
-  This is the text, describing what the image illustrates.
   Each line has three leading spaces.
   There can be multiple lines, but no blank lines.
   After the text, there must be a blank line with no leading spaces, followed by the image link
   which has three leading spaces.

   [![Image Alt Text](./img/image-name.png){ .half }](./img/image-name.png)
</div>
```

### Row with no boxes (used for two images side by side)

```markdown
<div class="grid cards" markdown>
   [![Image 1 Alt Text](./img/image-name1.png){ .half }](./img/image-name1.png)

   [![Image 2 Alt Text](./img/image-name2.png){ .half }](./img/image-name2.png)
</div>
```

### Key rules
- Title line: `- ` (dash + two spaces) then `__bold text__`
- With title: body text indented 4 spaces; image link indented 3 spaces
- Without title: body text AND image link both indented 3 spaces
- The blank line before the image link must have NO leading spaces
- Image link syntax: `[![Alt](./img/name.png){ .half }](./img/name.png)`
- Common size modifiers: `{ .half }` (half width), `{ .wide-240 }`, `{ .img-360 }`, `{ .img-511 }`, `{ .img-567 }`
