#!/usr/bin/env bash
set -euo pipefail

# Simple deploy helper for Vercel
# Requires: `npm i -g vercel` and you must be logged in (`vercel login`)

HERE=$(cd "$(dirname "$0")" && pwd)
cd "$HERE"

if ! command -v vercel >/dev/null 2>&1; then
  echo "Please install Vercel CLI: npm i -g vercel"
  exit 2
fi

echo "Deploying louen-birthday to Vercel (preview then production)..."

# Deploy preview
vercel --confirm

# Deploy production
read -p "Deploy to production now? (y/N) "> ans
if [[ "$ans" =~ ^[Yy]$ ]]; then
  vercel --prod --confirm
  echo "Production deploy triggered."
else
  echo "Skipped production deploy."
fi
