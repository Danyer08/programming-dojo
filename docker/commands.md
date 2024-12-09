# Docker CLI Commands

## Table of Content
- [Image Commands](#image-commands)
  - [Build an image from a Dockerfile](#build-an-image-from-a-dockerfile)
  - [List all images](#list-all-images)
  - [Remove an image](#remove-an-image)
  - [Pull an image from a registry](#pull-an-image-from-a-registry)
  - [Push an image to a registry](#push-an-image-to-a-registry)
  - [Run a container from an image](#run-a-container-from-an-image)
  - [Tag an image](#tag-an-image)
- [Container Commands](#container-commands)
  - [List all containers](#list-all-containers)
  - [Start a container](#start-a-container)
  - [Stop a container](#stop-a-container)
  - [Remove a container](#remove-a-container)
  - [Run a command in a running container](#run-a-command-in-a-running-container)
  - [Run command interactively in a running container](#run-command-interactively-in-a-running-container)
  - [Run a command in a new container](#run-a-command-in-a-new-container)
  - [Attach to a running container](#attach-to-a-running-container)
  - [Copy files/folders between a container and the local filesystem](#copy-filesfolders-between-a-container-and-the-local-filesystem)
  - [Inspect a container](#inspect-a-container)
  - [Get logs from a container](#get-logs-from-a-container)
  - [Pause a container](#pause-a-container)
  - [Unpause a container](#unpause-a-container)
- [Docker Swarm Commands](#docker-swarm-commands)
  - [Initialize a swarm](#initialize-a-swarm)
  - [Join a swarm](#join-a-swarm)
  - [List nodes in a swarm](#list-nodes-in-a-swarm)
  - [Deploy a service to a swarm](#deploy-a-service-to-a-swarm)
  - [List services in a swarm](#list-services-in-a-swarm)
  - [Scale a service in a swarm](#scale-a-service-in-a-swarm)
  - [Remove a service from a swarm](#remove-a-service-from-a-swarm)
  - [Leave a swarm](#leave-a-swarm)

## Image Commands

### Build an image from a Dockerfile
```bash
docker build -t myimage:tag {path/to/Dockerfile}
```

### List all images
```bash
docker images
```

```bash
docker image ls
```

### Remove an image
```bash
docker rmi myimage:tag
```

```bash
docker image rm myimage:tag
```

### Pull an image from a registry
```bash
docker pull myimage:tag
```

### Push an image to a registry
```bash
docker push myimage:tag
```

### Run a container from an image
```bash
docker run myimage:tag
```

### Tag an image
```bash
docker tag myimage:tag myimage:newtag
```

## Container Commands

### List all containers
```bash
docker ps -a
```

### Start a container
```bash
docker start mycontainer
```

### Stop a container
```bash
docker stop mycontainer
```

### Remove a container
```bash
docker rm mycontainer
```

### Run a command in a running container
```bash
docker exec mycontainer {command}
```

### Run command interactively in a running container
```bash
docker exec -it mycontainer {command}
```

### Run a command in a new container
```bash
docker run myimage:tag {command}
```

### Attach to a running container
```bash
docker attach mycontainer
```

### Copy files/folders between a container and the local filesystem
```bash
docker cp mycontainer:/path/to/file /path/on/host
```

```bash
docker cp /path/on/host mycontainer:/path/to/file
```

### Inspect a container
```bash
docker inspect mycontainer
```

### Get logs from a container
```bash
docker logs mycontainer
```

### Pause a container
```bash
docker pause mycontainer
```

### Unpause a container
```bash
docker unpause mycontainer
```

### Docker Swarm Commands

### Initialize a swarm
```bash
docker swarm init
```

### Join a swarm
```bash
docker swarm join --token {token} {manager-ip}
```

### List nodes in a swarm
```bash
docker node ls
```

### Deploy a service to a swarm
```bash
docker service create --name myservice myimage:tag
```

### List services in a swarm
```bash
docker service ls
```

### Scale a service in a swarm
```bash
docker service scale myservice=5
```

### Remove a service from a swarm
```bash
docker service rm myservice
```

### Leave a swarm
```bash
docker swarm leave
```
