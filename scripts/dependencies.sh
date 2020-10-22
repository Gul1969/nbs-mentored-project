#! /bin/bash

sudo apt-get update
sudo apt install python3-pip
python -m pip install --user ansible
sudo apt-get update
sudo apt install ansible
ansible-galaxy collection install community.general
