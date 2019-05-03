DCDEV = docker-compose -f docker/docker-compose.yml -f docker/docker-compose.dev.yml
DCPRD = docker-compose -f docker/docker-compose.yml -f docker/docker-compose.prd.yml
build.dev:
	$(DCDEV) build
up.dev:
	$(DCDEV) up
push: 
    $(DCPRD) push
pull:
    $(DCPRD) pull
build:
	$(DCPRD) build
up:
	$(DCPRD) up -d
build.client:
	docker run --rm -v `pwd`/src:/app --workdir /app/client node:10.15.3-alpine npm run build
