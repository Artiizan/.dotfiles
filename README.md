# dotfiles

Synchronisation of all configuration files for Linux environments. Also including `scripts` to assist in the quick setup of a new system.

## Prerequisites

These packages must be installed:
- `curl`

You must have `sudo` privelages to install new packages

## Usage

### Fresh init
```
# Make sure to double check the contents of the curl are what you expect before running with `sudo`
curl https://github.com/Artiizan/dotfiles/blob/main/scripts/init.sh | sudo bash
```

#### Only install packages
```
# Make sure to double check the contents of the curl are what you expect before running with `sudo`
curl https://github.com/Artiizan/dotfiles/blob/main/scripts/packages-init.sh | sudo bash
```

#### Only init configuration
```
curl https://github.com/Artiizan/dotfiles/blob/main/scripts/config-init.sh | bash
```

## Sources
(Article)[https://mjones44.medium.com/storing-dotfiles-in-a-git-repository-53f765c0005d] used to setup remote config files without `synmlinks`
