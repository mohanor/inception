
up:
	docker-compose -f ./srcs/docker-compose.yml up -d

r:
	docker rm -f  $$(docker ps -aq)
	docker rmi  $$(docker images -aq)

rmi:
	docker rmi  $$(docker images -aq)
	docker images
rm:
	docker rm -f  $$(docker ps -aq)
	docker voulme rm inception_repo_wordpress
	docker ps