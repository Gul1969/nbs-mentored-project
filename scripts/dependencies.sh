#! /bin/bash

sudo apt-get update
sudo apt install python3-pip
sudo apt-get update
sudo apt install ansible
ansible-galaxy collection install community.general
