#!/bin/sh

# vint doesn't support linting on stdin (le sigh...), so here we capture
# stdin, put it in the filename passed (or 'linting.vim' if none passed), then
# lint it.
#
# Chris Weyl <cweyl@alumni.drew.edu> 2017

LINTED_FILE=${1:-linting.txt}

mkdir -p "$(dirname "$LINTED_FILE")"

cat - > "$LINTED_FILE"
proselint "$LINTED_FILE"
