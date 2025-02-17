.PHONY: run lint autolint

export GEM_HOME=$(HOME)/.gems
export PATH:=$(HOME)/.gems/bin:$(PATH)

# Ensure dependencies are installed
check-deps:
	@which node > /dev/null || (echo "Error: node is required" && exit 1)
	@test -d node_modules || (echo "Error: Please run 'npm install' first" && exit 1)

run:
	bundle exec jekyll serve --host 0.0.0.0

lint: check-deps
	@echo "Running all linters (checking mode)..."
	npm run lint

autolint: check-deps
	@echo "Running all linters with auto-fix..."
	npm run lint:fix
