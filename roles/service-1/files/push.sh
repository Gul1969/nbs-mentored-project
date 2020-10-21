#! /bin/bash

sudo docker tag service-1 localhost:8082/service-1:"$(git rev-parse --short HEAD)"
sudo docker push localhost:8082/service-1:"$(git rev-parse --short HEAD)"
sudo docker rmi localhost:8082/service-1:"$(git rev-parse --short HEAD)"
