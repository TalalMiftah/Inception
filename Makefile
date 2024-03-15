DOCKER_COMPOSE = srcs/docker-compose.yml

up:
	docker-compose -f ${DOCKER_COMPOSE} up -d

down:
	docker-compose -f ${DOCKER_COMPOSE} down

start:
	docker-compose -f ${DOCKER_COMPOSE} start

stop:
	docker-compose -f ${DOCKER_COMPOSE} stop

PHONY: up down start stop