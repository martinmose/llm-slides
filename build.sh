#!/usr/bin/env bash
set -euo pipefail

# Check if marp is available
if ! command -v marp >/dev/null 2>&1; then
  echo "Error: marp not available. Run 'flox activate' first." >&2
  exit 1
fi
mkdir -p build dist

{
  cat slides/00-frontmatter.md
  first=true
  for f in slides/[0-9][1-9]-*.md; do
    if [ "$first" = true ]; then
      first=false
    else
      echo '---'
    fi
    cat "$f"
  done
} > build/deck.md

marp build/deck.md --pdf --allow-local-files -o dist/deck.pdf
marp build/deck.md --pptx -o dist/deck.pptx
