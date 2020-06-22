.PHONY: up
up: ## docker compose up
	docker-compose up -d

.PHONY: up-build
up-build: ## docker compose up with build option
	docker-compose up -d --build

.PHONY: build
build: ## docker compose build
	docker-compose build

.PHONY: start
start: ## docker compose start
	docker-compose start

.PHONY: stop
stop: ## docker compose stop
	docker-compose stop

.PHONY: down
down: ## docker compose down with v option
	docker-compose down -v

.PHONY: kill
kill: ## docker compose kill
	docker-compose kill

.PHONY: rm
rm: ## docker compose rm with f option
	docker-compose rm -f

.PHONY: logs
logs: ## docker compose logs with f option
	docker-compose logs -f

.PHONY: ps
ps: ## docker compose ps and top
	docker-compose ps && \
	docker-compose top

.PHONY: help
help: ## Usage
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)