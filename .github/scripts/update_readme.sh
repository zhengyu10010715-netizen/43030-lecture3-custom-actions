#!/bin/bash
set -eu

FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date -u '+%Y-%m-%d %H:%M:%S UTC')

printf '\n### Vowel Analysis\n\nContributor: %s\n\nTimestamp: %s\n\nVowel counts: %s\n' \
  "$GITHUB_USER" "$TIMESTAMP" "$FREQ_RESULT" >> README.md

echo "README updated successfully."
