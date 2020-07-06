.ONESHELL:
SHELL = /bin/bash


project: pull up

build:
	DOCKER_BUILDKIT=1 docker-compose build

pull:
	docker pull node:lts-alpine3.10 
	docker pull bryandollery/maven-repo 
	docker pull adoptopenjdk/openjdk11:alpine
install:
	./install.sh
up:
	docker-compose up -d

down:
	docker-compose down

clean:
	docker rm -f $(docker ps -qa)

logs:
	docker-compose logs -f
