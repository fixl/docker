Base Docker Container
=====================

A base docker container that comes with the ability to connect to other Docker containers.

Usage
-----

Add a `--volume=/var/run/docker.sock:/var/run/docker.sock` to containers that need access to the local docker daemon.

```
docker run -it --rm --volume=/var/run/docker.sock:/var/run/docker.sock ${USER}/base docker ps
```

Build the image
---------------
```
docker build --tag ${USER}/base .
```
