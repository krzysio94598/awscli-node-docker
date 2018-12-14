# awscli-node-docker

## Build the image
docker build --build-arg ENVIRONMENT=dev -t kr-awscli-node-docker .

## map ports from docker to local
docker run -d -p 80:80 kr-awscli-node-docker:latest


docker tag local-image:kr-awscli-node-docker new-repo:kr-awscli-node-docker

docker push new-repo:kr-awscli-node-docker

docker exec -i -t container_name /bin/bash
