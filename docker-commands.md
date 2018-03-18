# Docker Cheatsheet

### Starting containers
when starting the container it will look locally and if cannot
the container locally it will attempt to the find the container
on docker hub and download and store it in the image cache.
```
docker container run -p 8080:80 -d nginx
docker container run -p <ports:ports> -d --name <name> <container>
```
by default ports are tcp for udp
```
docker container run -p <ports:ports>/udp -d --name <name> <container>
```
### List containers
Docker container ids can be used to stop and remove containers as well
```
docker container ls
```
include stopped containers
```
docker container ls -a
```
### Docker network

### Docker container info
```
docker container logs
docker container top
docker container inspect
docker container stats
```

