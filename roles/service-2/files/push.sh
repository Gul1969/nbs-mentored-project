#! /bin/bash

sudo docker tag service-2 localhost:8082/service-2:"$(git rev-parse --short HEAD)"
sudo docker push localhost:8082/service-2:"$(git rev-parse --short HEAD)"
sudo docker rmi localhost:8082/service-2:"$(git rev-parse --short HEAD)"
