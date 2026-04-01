#!/usr/bin/env bash
# Source this file: source setup-openrouter.sh
# Requires OPENROUTER_API_KEY to be set in the environment or .env

if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

export ANTHROPIC_BASE_URL="https://openrouter.ai/api/v1"
export ANTHROPIC_API_KEY="${OPENROUTER_API_KEY}"
