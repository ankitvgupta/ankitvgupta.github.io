#!/bin/bash

# Set up environment variables
export GEM_HOME="$HOME/.gems"
export PATH="$HOME/.gems/bin:$PATH"

echo "Linting Markdown files..."
mdl _posts/ _projects/ *.md

echo "Linting SCSS files..."
scss-lint _sass/

echo "Linting HTML files..."
npx htmlhint _includes/*.html _layouts/*.html
