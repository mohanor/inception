
build:
	docker-compose -f ./srcs/docker-compose.yml up -d

start : 
	@docker-compose -f ./srcs/docker-compose.yml start
