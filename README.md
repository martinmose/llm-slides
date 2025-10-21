# Slides

A presentation built with [Marp](https://marp.app/) for creating slides from Markdown files.

## Requirements

- [Flox](https://flox.dev/) - for development environment management

## Setup

1. Install and activate the flox environment:
   ```bash
   flox activate
   ```

   This installs marp-cli and other required dependencies. The build script requires flox to be activated and will error if not.

## Building

Run the build script to generate the presentation:

```bash
./build.sh
```

This script will:
1. Combine all slide files from the `slides/` directory
2. Generate a PDF version at `dist/deck.pdf`
3. Generate a PowerPoint version at `dist/deck.pptx`

## Project Structure

```
slides/
├── 00-frontmatter.md    # Marp configuration and title slide
├── 01-*.md             # Content slides (numbered for ordering)
├── 02-*.md
└── ...
build/
└── deck.md             # Combined markdown file
dist/
├── deck.pdf            # Generated PDF presentation
└── deck.pptx           # Generated PowerPoint presentation
```

## Usage

1. Edit or add markdown files in the `slides/` directory
2. Run `./build.sh` to generate the presentation
3. Find your presentation files in the `dist/` directory