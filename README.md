node-red in a docker container
==============================

Installed nodes
---------------
* node-red-contrib-owfs 
* node-red-contrib-elasticsearch 
* node-red-contrib-hangouts

Other npm modules
-----------------
* sonos

Example usage
=============

	docker run -p 1880:1880 benediktarnold/node-red
	
or with persistent data

	docker run -p 1880:1880 -v node-red-data:/home/red/.node-red benediktarnold/node-red

or with persistent data and persistent hangouts credentials

	docker run -p 1880:1880 -v node-red-data:/home/red/.node-red -v hangouts-credentials:/home/red/.node-red-contrib-hangouts benediktarnold/node-red
