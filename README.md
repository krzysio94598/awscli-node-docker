# awscli-node-docker

## Build the image
docker build --build-arg ENVIRONMENT=dev -t kr-awscli-node-docker .

## map ports from docker to local
docker run -d -p 80:80 kr-awscli-node-docker:latest

docker exec -i -t container_name /bin/bash
