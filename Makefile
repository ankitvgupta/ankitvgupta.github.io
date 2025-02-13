.PHONY: run lint autolint

export GEM_HOME=$(HOME)/.gems
export PATH:=$(HOME)/.gems/bin:$(PATH)

run:
	bundle exec jekyll serve --host 0.0.0.0

lint:
	@echo "Running all linters (checking mode)..."
	npm run lint

autolint:
	@echo "Running all linters with auto-fix..."
	npm run lint:fix
