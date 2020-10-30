#! /bin/bash

sudo apt-get update
sudo apt install python3-pip
sudo apt install python-pip
sudo apt install python3-venv
sudo apt-get update
sudo python -m pip install ansible
sudo apt install ansible
ansible-galaxy collection install community.general
