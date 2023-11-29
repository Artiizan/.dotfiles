#!/usr/bin/env bash

# update apt sources and install nala
echo "deb-src https://deb.volian.org/volian/ scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list
sudo apt update && sudo apt install -y nala

# update pacakge library and current packages
sudo nala upgrade -y

sudo nala install -y \
git micro btop

##### Terminal setup #####

sudo add-apt-repository universe

# install terminal packages
sudo nala install -y \
zsh neofetch fonts-firacode \
python3-dev python3-pip python3-setuptools

# install spaceship-prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# install starship
curl -sS https://starship.rs/install.sh | sh -y

# install autosuggestions for zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install thefuck
pip3 install thefuck --user

chsh -s $(which zsh)
