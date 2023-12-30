
- docker pull [image]
	- git clone
- docker images
	- ll
- docker run [image]  
	- docker pull + docker start ==> docker run
- docker ps
	- see all running containers
- docker ps -a
	- shows containers past history not just active (ls -a)
-  docker run -d [image]
	- run it in a detach mode
		- docker run -p6000:6379 -d [image]
-   docker stop [container_id]
	- if you wanna force stop or reboot container
-   docker start [container_id]
	- go back into the container
-    docker run -p
	- -p binding ports
-  docker logs [arg]
	- docker logs [container_id] || [names]
-  docker --name
	- name for [names]
	- docker run -d p6000:6379 --name redis-older redis:4:0
- docker exec  n -it [container_id] /bin/bash
	- interactive terminal 
		- exit 
			- leave it



### container
- `docker start [container_id] || [names]`
container is more of a static pass down from the image run.
### image
- docker run -r --name -d
an image is something we can manipulate like dynamically 



## Docker SRC
- mark as important
	- https://www.knowledgehut.com/blog/devops/docker-for-beginners#:~:text=Docker%20for%20the%20absolute%20beginner,needs%2C%20Docker%20is%20pretty%20simple
-  https://stackoverflow.com/questions/43721513/how-to-check-if-the-docker-engine-and-a-docker-container-are-running
-  https://stackoverflow.com/questions/47854463/docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socke/52646981#52646981
### docker issues
- [https://github.com/carla-simulator/carla/issues/3599](https://github.com/carla-simulator/carla/issues/3599 "https://github.com/carla-simulator/carla/issues/3599")
- https://carla.readthedocs.io/en/latest/build_docker/
