#!/bin/bash
# Synchronous SessionStart hook — checks binary availability, then logs.
# If vibenalytics is not installed, surfaces a systemMessage to the user.

if ! command -v vibenalytics &>/dev/null; then
  echo '{"systemMessage":"[Vibenalytics] Binary not found on PATH. Install it with: curl -fsSL https://vibenalytics.dev/install.sh | bash"}'
  exit 0
fi

# Binary exists — pipe stdin to it for logging
vibenalytics log
