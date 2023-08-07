
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

