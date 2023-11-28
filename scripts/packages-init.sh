#!/usr/bin/env bash

# update apt sources and install nala
sudo apt update && sudo apt install -y nala

# update pacakge library and current packages
sudo nala upgrade -y

##### Terminal setup #####

sudo add-apt-repository universe

# install terminal packages
sudo nala install -y \
zsh neofetch \
fonts-firacode \
python3-dev python3-pip python3-setuptools

# install spaceship-prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# install starship
curl -sS https://starship.rs/install.sh | sh

# install thefuck
pip3 install thefuck --user
