#!/usr/bin/env bash
set -euo pipefail

if node -e "const p=require('./package.json'); process.exit(p.scripts?.format ? 0 : 1)"; then
  npm run format
else
  echo "No formatter configured. Add a format script in package.json."
fi
