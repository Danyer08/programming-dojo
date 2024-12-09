# Docker Swarm Guide

## Table of Contents

- [What is Docker Swarm](#what-is-docker-swarm)
- [Docker Swarm Architecture](#docker-swarm-architecture)
- [Docker Swarm Features](#docker-swarm-features)
- [Docker Swarm Services](#docker-swarm-services)
- [Docker Swarm Stacks](#docker-swarm-stacks)
- [Docker Swarm Secrets](#docker-swarm-secrets)
- [Docker Swarm Configs](#docker-swarm-configs)
- [Docker Swarm Commands](#docker-swarm-commands)

### What is Docker Swarm

Docker Swarm is a native clustering and scheduling tool for Docker containers. It allows you to create and access a pool of Docker hosts using the full suite of Docker tools. Because Docker Swarm serves the standard Docker API, any tool that already communicates with a Docker daemon can use Swarm to transparently scale to multiple hosts.

### Docker Swarm Architecture

Docker Swarm follows the manager-worker node architecture. The manager node is responsible for the orchestration of the worker nodes. The manager node is also responsible for the scheduling of the services and the management of the worker nodes. The worker nodes are responsible for running the services.

### Docker Swarm Features

- **Service Discovery**: Docker Swarm has a built-in DNS server that automatically assigns DNS names to containers.
- **Load Balancing**: Docker Swarm has a built-in load balancer that distributes incoming requests across the containers.
- **Scaling**: Docker Swarm allows you to scale services up or down by changing the number of replicas.
- **Rolling Updates**: Docker Swarm allows you to update services without downtime by rolling out updates to a few containers at a time.
- **Security**: Docker Swarm has built-in security features that allow you to secure your services.

### Docker Swarm Services

Docker Swarm services are the key building blocks of a swarm. A service is a definition of a container that can be scaled up or down. A service can be created using the `docker service create` command. A service can be scaled using the `docker service scale` command. A service can be removed using the `docker service rm` command.

### Docker Swarm Stacks

Docker Swarm stacks are a way to define and deploy multi-service applications. A stack is a collection of services that are defined in a single file. A stack can be deployed using the `docker stack deploy` command. A stack can be removed using the `docker stack rm` command.

### Docker Swarm Secrets

Docker Swarm secrets are a way to securely store sensitive information such as passwords, API keys, and certificates. Secrets are encrypted and only accessible to the services that need them. Secrets can be created using the `docker secret create` command. Secrets can be removed using the `docker secret rm` command.

### Docker Swarm Configs

Docker Swarm configs are a way to store configuration files that are needed by services. Configs are versioned and can be updated without restarting the services. Configs can be created using the `docker config create` command. Configs can be removed using the `docker config rm` command.

### Docker Swarm Commands

- **Initialize a swarm**
```bash
docker swarm init
```

- **Join a swarm**
```bash
docker swarm join --token {token} {manager-ip}
```

- **List nodes in a swarm**
```bash
docker node ls
```

- **Deploy a service to a swarm**
```bash
docker service create --name myservice myimage:tag
```

- **List services in a swarm**
```bash
docker service ls
```

- **Scale a service in a swarm**
```bash
docker service scale myservice=5
``

- **Remove a service from a swarm**
```bash
docker service rm myservice
```

- **Leave a swarm**
```bash
docker swarm leave
```

- Deploy a stack to a swarm from docker compose file
```bash
docker stack deploy -c docker-compose.yml myservice
```
