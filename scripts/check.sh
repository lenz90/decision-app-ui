#!/usr/bin/env bash
set -euo pipefail

if node -e "const p=require('./package.json'); process.exit(p.scripts?.format ? 0 : 1)"; then
  npm run format
else
  echo "No format script configured; skipping."
fi

npm run lint
npm run typecheck

if node -e "const p=require('./package.json'); process.exit(p.scripts?.test ? 0 : 1)"; then
  npm test
else
  echo "No tests configured; skipping."
fi

npm run build
