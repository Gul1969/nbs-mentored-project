#! /bin/bash

sudo docker tag service-1 localhost:8082/service-1:"$(git rev-parse --short HEAD)"
sudo docker push localhost:8082/service-1:"$(git rev-parse --short HEAD)"
sudo docker rmi localhost:8082/service-1:"$(git rev-parse --short HEAD)"
sudo docker tag service-2 localhost:8082/service-2:"$(git rev-parse --short HEAD)"
sudo docker push localhost:8082/service-2:"$(git rev-parse --short HEAD)"
sudo docker rmi localhost:8082/service-2:"$(git rev-parse --short HEAD)"
sudo docker tag service-3 localhost:8082/service-3:"$(git rev-parse --short HEAD)"
sudo docker push localhost:8082/service-3:"$(git rev-aprse --short HEAD)"
sudo docker rmi localhost:8082/service-3:"$(git rev-parse --short HEAD)"
sudo docker tag service-4 localhost:8082/service-4:"$(git rev-parse --short HEAD)"
sudo docker push localhost:8082/service-4:"$(git rev-parse --short HEAD)"
sudo docker rmi localhost:8082/service-4:"$(git rev-parse --short HEAD)"
