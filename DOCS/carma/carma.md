

What is carma?
- cooperative driving automation
- encourages collaboration and participation by a community of engineers and researchers
Goal:
- Advance understanding of cooperative driving automation using open source software (OSS) and agile project management practices.
- API for third party plugins that implement vehicle guidance algorithms to plan vehicle trajectories.
- The platform can be reused on a variety of properly equipped vehicles.


First Aspect (navigation ~ AKA localization):
- The act of determining where the vehicle currently is with respect to the earth and with respect to the desired path of travel (its planned route).

Second Aspect(guidance ~AKA trajectory planning):
-   The processes of determining how the vehicle is to move from its current location to its destination. 
- The destination and route will be handed to the guidance algorithms, and they then determine how the vehicle’s motion needs to be adjusted at any time in order to follow the route.

Third Aspect (**control**):
The third aspect of automated vehicle motion is **control**, which covers 

- The actuation of the vehicle’s physical devices to induce changes in motion (for land vehicles these are typically causing the wheels to rotate faster or slower and turning the steering wheel) 
-  As the vehicle moves, obviously its location changes so that the navigation function constantly needs to update its solution and the cycle iterates as quickly as necessary to produce a smooth and accurate vehicle motion. The rate of iteration is largely determined by the expected speed of the vehicle.
	- navigation solution --> input guidance(x,y,z)
	- guidance solution --> input control(x,y,z)


GOAL:
- Transform transportation, improving efficiency and safety through automated vehicles working together and with roadway infrastructure.
-  Vehicles communicating with each other via DSRC or cellular means. They can also communicate with roadside infrastructure using DSRC or cellular. The communication among software components within a single vehicle, however, is mostly done via the Robot Operating System (ROS) framework. There are no ROS communications between neighboring vehicles.



### src 
- links
	- https://usdot-carma.atlassian.net/wiki/spaces/CRMSIM/overview
- setup
	- https://usdot-carma.atlassian.net/wiki/spaces/CRMSIM/pages/2303393803/Setup+Instructions+Documentation+CARMA-simulation
- how to set up carma with sim
	- https://usdot-carma.atlassian.net/wiki/spaces/CRMSIM/pages/2419916803/Setup+Instructions+Documentation+CARMA-CARLA+integration

