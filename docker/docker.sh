#! /bin/bash

sudo su - jenkins
sudo docker login -u admin -p admin localhost:8082
ansible-playbook playbook.yaml
