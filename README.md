# docker

Initial install for Ubuntu and CentOS and other docker based files


cker Cheatsheet

### Starting containers
when starting the container it will look locally and if cannot
the container locally it will attempt to the find the container
on docker hub and download and store it in the image cache.

#### 
```
docker container run -p 8080:80 -d nginx
docker container run -p <ports:ports> -d --name <name> <container>
```
by default ports are tcp for udp
```
docker container run -p <ports:ports>/udp -d --name <name> <container>
```

Starting containers without ssh interactively. As soon as you exit the shell
 the container will stop. 
```
docker container run -it --name <name> nginx bash
```
Any actions performed will be present when the container is started again. Any
containers based on this image will not contain the actions performed. To start
this container back up use
```
docker container start -ai <name>
```
To run an additional process on an already running container we can 
use the exec command
```
docker container -it exec <name> <process>
```


### List containers and images
Docker container ids can be used to stop and remove containers as well
```
docker image ls
docker container ls
```

### Docker networking
Creating a new docker network
```
docker network create <name>
```
This will create a new docker network associated with the default bridge
adapter. 

To start a container on a specific network 
```
docker container run -d --name <name> --network <name> <container>
```

create and disconnect network cards for live or existing containers
```
docker network connect
docker network disconnect
```
view the docker networking information
```
docker newtork ls -a
docker network inspect
```
```
docker network create --driver
docker container port <name>
```
docker inspect returns a json object. You can use this to return the object related
to a docker network to view the containers connected and address space associated
```
docker container inspect <network-name>
docker container inspect --format '{{ .NetworkSettings.IPAddress }}' <name>
```


### Docker container info
```
docker container logs
docker container top
docker container inspect
docker container stats
```

