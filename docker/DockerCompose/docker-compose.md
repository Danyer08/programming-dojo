# Docker Compose Guide

## Table of Contents

- [What is Docker Compose](#what-is-docker-compose)
- [Docker Compose Architecture](#docker-compose-architecture)
- [Docker Compose Features](#docker-compose-features)
- [Docker Compose Commands](#docker-compose-commands)

### What is Docker Compose

Docker Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application's services. Then, with a single command, you create and start all the services from your configuration.

### Docker Compose Architecture

Docker Compose follows the client-server architecture. The client is the `docker-compose` command-line tool, and the server is the Docker daemon. The client sends commands to the server, which then executes them.

### Docker Compose Features

- **Define services with a `docker-compose.yml` file**: Docker Compose allows you to define your application's services in a `docker-compose.yml` file. This file specifies the services, networks, and volumes that make up your application.

### Docker Compose Commands

- **Build or rebuild services**
```bash
docker-compose build
```

- **Create and start services**
```bash
docker-compose up
```

- **Stop services**
```bash
docker-compose stop
```

- **Start services**
```bash
docker-compose start
```

- **Restart services**
```bash
docker-compose restart
```

- **List services**
```bash
docker-compose ps
```

- **View logs**
```bash
docker-compose logs
```

- **Run a command in a service**
```bash
docker-compose exec {service} {command}
```

- **Scale services**
```bash
docker-compose scale {service}={number}
```

- **Remove services**
```bash
docker-compose rm
```

- **Down services**
```bash
docker-compose down
```

- **Pause services**
```bash
docker-compose pause
```

- **Unpause services**
```bash
docker-compose unpause
```
