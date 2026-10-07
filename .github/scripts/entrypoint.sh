#!/bin/bash
set -eu

FILE="${FILE:-data.txt}"

echo "Starting Vowel Frequency Analyzer..."

FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py "$FILE")

echo "Vowel counts: $FREQ_RESULT"

bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Process completed!"
