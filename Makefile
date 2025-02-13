.PHONY: run lint

export GEM_HOME=$(HOME)/.gems
export PATH:=$(HOME)/.gems/bin:$(PATH)

run:
	bundle exec jekyll serve --host 0.0.0.0

lint:
	@echo "Running all linters..."
	@echo "Linting Markdown files..."
	@mdl _posts/ _projects/ *.md || true
	@echo "Linting SCSS files..."
	@scss-lint _sass/ || true
	@echo "Linting HTML files..."
	@npx htmlhint _includes/*.html _layouts/*.html || true
