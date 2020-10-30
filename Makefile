start:
	docker container start db api
build:
	./boot.sh
stop:
	docker container stop api db
destroy: stop
	docker network rm notes-api-network
	docker container rm api db
	docker image rm notes-api