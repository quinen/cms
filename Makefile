DOCKER_CONTAINER=php-cms

.PHONY: help
help: ## Affichage des différentes commandes disponibles
	@# Cette ligne permet d'afficher la liste des commandes disponibles via la commande make \
	# en analysant ce fichier et en extrayant le commentaire précédé de "##" \
	grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: bash
bash:	## run bash inside container
	docker exec -it $(DOCKER_CONTAINER) bash

.PHONY: logs
logs:	## show log
	docker logs -f $(DOCKER_CONTAINER)

.PHONY: up
up:
	docker-compose -f docker/docker-compose.yml up -d

.PHONY: up-build
up-build:
	docker-compose -f docker/docker-compose.yml up -d --build

.PHONY: build
build:
	docker-compose -f docker/docker-compose.yml build --no-cache

.PHONY: down
down:
	docker-compose -f docker/docker-compose.yml down --remove-orphans

composer:
	-docker exec -it $(DOCKER_CONTAINER) chown -R $(USER):$(USER) /var/www/html/vendor
	docker exec -it $(DOCKER_CONTAINER) bash -c "cd /var/www/html && composer $(filter-out $@,$(MAKECMDGOALS))"
	docker exec -it $(DOCKER_CONTAINER) chown -R $(USER):$(USER) /var/www/html/vendor