#! /bin/bash

sudo apt remove ansible -y
sudo apt-get update
sudo apt install python3-pip -y
sudo apt install python-pip -y
sudo apt install python3-venv -y
sudo apt install maven default-jdk -y
sudo apt-get update
python -m pip install --user ansible
sudo -H python -m pip install ansible
sudo apt install ansible 
ansible-galaxy collection install community.general
