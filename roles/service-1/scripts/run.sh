#! /bin/bash

sudo docker run -d -p 5001:5000 --name service-1 --network challenge-network localhost:8082/service-1:latest
