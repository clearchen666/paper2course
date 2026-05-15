#!/bin/bash
# Assembles the course from parts.
# Run from the course directory: bash build.sh
set -e
cat _base.html modules/*.html _footer.html > index.html
if [ -f _base.zh.html ] && [ -d modules-zh ]; then
  cat _base.zh.html modules-zh/*.html _footer.html > index.zh.html
  echo "Built index.html and index.zh.html — open either in your browser."
else
  echo "Built index.html — open it in your browser."
fi
