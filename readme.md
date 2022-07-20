# Practice docker

## Enable BuildKit
BuildKit allows you to build Docker images efficiently. Add following lines to ```/etc/docker/daemon.json``` and restart Docker daemon.
```json
{
  "features":{"buildkit" : true}
}
```
```bash
sudo systemctl daemon-reload # flush changes
sudo systemctl restart docker
```

## Tag images
Run
```bash
docker tag python-docker:latest python-docker:v1.0.0 # create a new tag pointing to this image, no new images created
```

## Run the images
```bash
docker run -dp 8000:5000 python-docker:latest
```
- ```-d```: run this image in the background, so called "detached"
- ```-p```: map the host's port to container's port, format hostport:containerport, so called "publishing"

## Useful commands
- docker restart \<container-name\>
- docker ps -a
- docker stop \<container-name\>
- docker run --name \<container-name\> \<image-name\>
- docker volume create \<volume-name\> # create a area on host filesystem to store data of containers
- docker network create \<network-name\> # create network for containers can communicate
