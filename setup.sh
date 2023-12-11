#!/usr/bin/env bash
# Install for dockerized development environments

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y gpg

# terraform
curl https://apt.releases.hashicorp.com/gpg | gpg — dearmor > hashicorp.gpg
sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
sudo apt-add-repository “deb [arch=$(dpkg — print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt install -y \
software-properties-common gnupg2 python3 \
terraform

# ansible
python3 -m pip install --user ansible
