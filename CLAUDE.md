# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Environment Setup

This project uses Flox for environment management. Always activate the environment before working:
```bash
flox activate
```

This installs marp-cli v4.2.3 and other dependencies automatically. The build script requires flox to be activated and will error if not.

## Build System

The presentation is built using a custom shell script that combines multiple Markdown files:

```bash
./build.sh
```

**Build Process:**
1. Creates `build/` and `dist/` directories
2. Concatenates `slides/00-frontmatter.md` (contains Marp configuration) with numbered slide files
3. Combines them into `build/deck.md` with `---` separators between slides
4. Generates PDF output: `dist/deck.pdf` (using marp-cli from flox environment)
5. Generates PowerPoint output: `dist/deck.pptx` (using marp-cli from flox environment)

## Architecture

**Slide Organization:**
- `slides/00-frontmatter.md` - Contains Marp configuration (`marp: true`, `paginate: true`, `theme: default`)
- `slides/[0-9][0-9]-*.md` - Numbered slide files processed in lexicographic order
- Build script uses glob pattern `slides/[0-9][0-9]-*.md` to ensure proper ordering

**Output Structure:**
- `build/deck.md` - Combined Markdown file ready for Marp processing
- `dist/deck.pdf` - Final PDF presentation
- `dist/deck.pptx` - Final PowerPoint presentation

## Marp Configuration

The frontmatter file controls Marp behavior:
- Theme: default
- Pagination: enabled
- Slide separators: `---` (added automatically by build script)

When adding new slides, use the naming pattern `NN-description.md` where NN is a two-digit number to maintain proper ordering.