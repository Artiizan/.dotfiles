#!/usr/bin/env bash

# preseed for tzdata
sudo DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install tzdata -y

# update apt sources and install nala
sudo apt update && sudo apt install -y nala

# update pacakge library and current packages
sudo nala upgrade -y

sudo nala install -y \
git micro btop thefuck

##### Terminal setup #####

sudo add-apt-repository universe
sudo apt update

# install terminal packages
sudo nala install -y \
zsh neofetch fonts-firacode

# install spaceship-prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# install starship
curl -sS https://starship.rs/install.sh | sh -y

# install autosuggestions for zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install development dependencies

# terraform
curl https://apt.releases.hashicorp.com/gpg | gpg — dearmor > hashicorp.gpg
sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
sudo apt-add-repository “deb [arch=$(dpkg — print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update

sudo nala install -y \
software-properties-common gnupg2 python3 \
terraform

# ansible
python3 -m pip install --user ansible

chsh -s $(which zsh)
