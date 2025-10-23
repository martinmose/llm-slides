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
- **CRITICAL**: ALL slide files MUST end with a trailing newline character. When creating or editing slides, ALWAYS ensure the file ends with `\n`
- Slide separator `---` added automatically by build script
- Build outputs: `build/deck.md` (combined), `dist/deck.pdf`, `dist/deck.pptx`

### Creating New Slides
When creating a new slide file:
1. Write the content
2. **ALWAYS add a trailing newline at the end** - this is mandatory
3. Verify the file ends with a blank line

## Style Guidelines
- Markdown formatting: Standard GFM, clean and readable
- Shell scripts: Use `set -euo pipefail`, check command availability before use
- Line endings: Unix (LF)
