#! /bin/bash

sudo docker tag service-1 localhost:8082/service-1:${BUILD_NUMBER}
sudo docker push localhost:8082/service-1:${BUILD_NUMBER}
sudo docker tag localhost:8082/service-1:${BUILD_NUMBER} localhost:8082/service-1:latest
suod docker push localhost:8082/service-1:latest
sudo docker rmi locahost:8082/service-1:latest localhost:8082/service-1:${BUILD_NUMBER}
