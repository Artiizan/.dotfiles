#!/usr/bin/env bash

# Install packages
# Make sure to double check the contents of the curl are what you expect before running with `sudo`
curl https://raw.githubusercontent.com/Artiizan/dotfiles/main/scripts/packages-init.sh | sudo bash

# Configuration setup
curl https://raw.githubusercontent.com/Artiizan/dotfiles/main/scripts/config-init.sh | bash
