.PHONY: run lint lint-fix

export GEM_HOME=$(HOME)/.gems
export PATH:=$(HOME)/.gems/bin:$(PATH)

run:
	bundle exec jekyll serve --host 0.0.0.0

lint:
	@echo "Running all linters..."
	npm run lint

lint-fix:
	@echo "Running all linters with auto-fix..."
	npm run lint:fix
