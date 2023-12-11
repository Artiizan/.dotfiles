#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

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
curl -sS https://starship.rs/install.sh | sh

# install autosuggestions for zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install development dependencies

# terraform
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update

sudo nala install -y \
software-properties-common python3 \
terraform 

# ansible
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
python3 -m pip install --user ansible

# terraform

# overwrite the zsh config with ours for first run
curl https://raw.githubusercontent.com/Artiizan/dotfiles/main/scripts/config-init.sh | bash
chsh -s $(which zsh)
