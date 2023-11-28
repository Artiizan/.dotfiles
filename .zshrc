
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases

eval $(thefuck --alias)
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# run on start
neofetch
