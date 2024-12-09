# Dockerfile Cheat Sheet

## Table of Contents

- [Dockerfile Instructions](#dockerfile-instructions)
- [Dockerfile Best Practices](#dockerfile-best-practices)

## Dockerfile Instructions

### FROM

- The `FROM` instruction initializes a new build stage and sets the Base Image for subsequent instructions.

### RUN

- The `RUN` instruction will execute any commands in a new layer on top of the current image and commit the results.

### CMD

- The `CMD` instruction has three forms:
  - `CMD ["executable","param1","param2"]` (exec form, this is the preferred form)
  - `CMD ["param1","param2"]` (as default parameters to ENTRYPOINT)
  - `CMD command param1 param2` (shell form)

### LABEL

- The `LABEL` instruction adds metadata to an image. A LABEL is a key-value pair.

### EXPOSE

- The `EXPOSE` instruction informs Docker that the container listens on the specified network ports at runtime.

### ENV

- The `ENV` instruction sets the environment variable `key` to the value `value`.

### ADD

- The `ADD` instruction copies new files, directories or remote file URLs from `<src>` and adds them to the filesystem of the image at the path `<dest>`.

### COPY

- The `COPY` instruction copies new files or directories from `<src>` and adds them to the filesystem of the container at the path `<dest>`.

### ENTRYPOINT

- The `ENTRYPOINT` instruction allows you to configure a container that will run as an executable.

### VOLUME

- The `VOLUME` instruction creates a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers.

### USER

- The `USER` instruction sets the user name or UID to use when running the image.

### WORKDIR

- The `WORKDIR` instruction sets the working directory for any `RUN`, `CMD`, `ENTRYPOINT`, `COPY` and `ADD` instructions that follow it in the Dockerfile.

### ARG

- The `ARG` instruction defines a variable that users can pass at build-time to the builder with the docker build command using the `--build-arg <varname>=<value>` flag.

### ONBUILD

- The `ONBUILD` instruction adds a trigger instruction to the image that will be executed

### STOPSIGNAL

- The `STOPSIGNAL` instruction sets the system call signal that will be sent to the container to exit.

### HEALTHCHECK

- The `HEALTHCHECK` instruction tells Docker how to test a container to check that it is still working.

### SHELL

- The `SHELL` instruction allows the default shell used for the shell form of commands to be overridden.

## Dockerfile Best Practices

### Create ephemeral containers

- Containers are ideally ephemeral and stateless. Any data that needs to persist should be stored in volumes.

### Use exact image tags

- Use exact image tags instead of the `latest` tag to ensure reproducibility.

### Use .dockerignore

- Create a `.dockerignore` file to exclude files and directories from the build context.

### Use multi-stage builds

- Use multi-stage builds to reduce the size of the final image.

### Use the COPY instruction

- Use the `COPY` instruction instead of `ADD` if you don't need the automatic tar extraction feature.

### Use the exec form of CMD

- Use the exec form of `CMD` to avoid shell interpolation.

### Use the LABEL instruction

- Use the `LABEL` instruction to add metadata to an image.

### Use the HEALTHCHECK instruction

- Use the `HEALTHCHECK` instruction to test the container health.

### Use the SHELL instruction

- Use the `SHELL` instruction to override the default shell.

### Use the ARG instruction

- Use the `ARG` instruction to pass arguments to the build process.

### Use the VOLUME instruction

- Use the `VOLUME` instruction to create a mount point for externally mounted volumes.

### Use the USER instruction

- Use the `USER` instruction to set the user name or UID to use when running the image.
