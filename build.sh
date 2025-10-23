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
  slides=()
  for f in slides/[0-9][0-9]*.md; do
    [[ "$f" == "slides/00-frontmatter.md" ]] && continue
    slides+=("$f")
  done
  for i in "${!slides[@]}"; do
    cat "${slides[$i]}"
    if [[ $i -lt $((${#slides[@]} - 1)) ]]; then
      echo '---'
    fi
  done
} > build/deck.md

marp build/deck.md --pdf --allow-local-files -o dist/deck.pdf
marp build/deck.md --pptx --allow-local-files -o dist/deck.pptx
