# AGENTS.md

Instructions for AI coding agents working in this repository.

## Environment Setup
- **REQUIRED**: Run `flox activate` before any build operations
- This project uses Flox to manage marp-cli and dependencies

## Build Commands
- Build presentation: `./build.sh` (requires flox activation)
- No test suite, linting, or typecheck commands exist

## Project Type
- Marp presentation built from Markdown slides
- Languages: Markdown, Shell script
- No code linting or testing infrastructure

## File Conventions
- **Slide naming**: Use pattern `NN-description.md` where NN is two-digit number (e.g., `01-intro.md`, `02-content.md`)
- Slides processed in lexicographic order by glob `slides/[0-9][0-9]-*.md`
- `slides/00-frontmatter.md`: Contains Marp YAML configuration (theme, pagination, custom styles)
- **IMPORTANT**: All slide files MUST end with a trailing newline for proper separation
- Slide separator `---` added automatically by build script
- Build outputs: `build/deck.md` (combined), `dist/deck.pdf`, `dist/deck.pptx`

## Style Guidelines
- Markdown formatting: Standard GFM, clean and readable
- Shell scripts: Use `set -euo pipefail`, check command availability before use
- Line endings: Unix (LF)
