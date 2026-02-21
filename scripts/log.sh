#!/bin/bash
# Synchronous SessionStart hook — checks binary availability, then logs.
# If claudnalytics is not installed, surfaces a systemMessage to the user.

if ! command -v claudnalytics &>/dev/null; then
  echo '{"systemMessage":"[Claudnalytics] Binary not found on PATH. Install it with: npm install -g claudnalytics"}'
  exit 0
fi

# Binary exists — pipe stdin to it for logging
claudnalytics log
