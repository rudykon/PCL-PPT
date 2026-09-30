#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

if ! command -v latexmk >/dev/null 2>&1 || ! command -v xelatex >/dev/null 2>&1; then
  echo "Please install TeX Live with XeLaTeX and latexmk." >&2
  exit 1
fi

if [[ $# -eq 1 && $1 == clean ]]; then
  latexmk -C main.tex starter.tex
  exit 0
fi

if [[ $# -eq 0 ]]; then
  set -- main starter
fi

for target in "$@"; do
  case "$target" in
    main|starter) ;;
    *) echo "Usage: ./build.sh [main|starter ...|clean]" >&2; exit 2 ;;
  esac
done

mkdir -p examples
for target in "$@"; do
  latexmk "$target.tex"
  cp -- "build/$target.pdf" "examples/$target.pdf"
done
