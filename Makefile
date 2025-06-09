# Makefile for SupportAI project

.PHONY: all install update init build force-build up down reload logs

install:
	cd SupportAI-Frontend && npm install
	cd SupportAI-Backend && npm install
	cd SupportAI-Model-AI && npm install

update:
	cd SupportAI-Frontend && npm update
	cd SupportAI-Backend && npm update
	cd SupportAI-Model-AI && npm update

init:
	git submodule add https://github.com/SupportAI-Project/SupportAI-Backend
	git submodule add https://github.com/SupportAI-Project/SupportAI-Frontend
	git submodule add https://github.com/SupportAI-Project/SupportAI-Model-AI

build:
	docker compose build

force-build:
	docker compose up -d --force-recreate --renew-anon-volumes

up: build
	docker compose run --rm --entrypoint "npm install" supportai-backend
	docker compose run --rm --entrypoint "npm install" supportai-frontend
	docker compose run --rm --entrypoint "npm install" supportai-model-ai
	# Temporary Neon DB setup for projections
	# docker exec -it supportai-postgres psql -U supportai_owner -c "CREATE DATABASE supportai;"
	docker compose up -d

down:
	docker compose down

reload: down up

logs:
	docker compose logs -f

# Default target
all:
	@echo "Usage: make {install|update|init|build|force-build|up|down|reload|logs}"