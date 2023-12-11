#!/usr/bin/env bash
# Install for dockerized development environments

sudo apt-get update
sudo DEBIAN_FRONTEND="noninteractive" apt-get install -y --no-install-recommends gpg 

# terraform
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update
sudo DEBIAN_FRONTEND="noninteractive" apt-get install -y terraform

# ansible
python3 -m pip install --user ansible
python3 -m pip install --user yamllint
