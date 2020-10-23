#! /bin/bash

sudo docker rm -f nexus
sudo docker run -d -p 8081:8081 -p 8082:8082 --network challenge-network --name nexus sonatype/nexus3
