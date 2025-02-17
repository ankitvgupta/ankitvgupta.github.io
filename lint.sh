#!/bin/bash

# Set up environment variables
export GEM_HOME="$HOME/.gems"
export PATH="$HOME/.gems/bin:$PATH"

echo "Running all linters..."
npm run lint

echo "To auto-fix linting issues, run: npm run lint:fix"
