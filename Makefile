#!make

include .env
export

start:
	docker compose -f ./docker/docker-compose.yml up -d
down:
	docker compose -f ./docker/docker-compose.yml down -v
cmd:
	docker compose -f ./docker/docker-compose.yml $(c)