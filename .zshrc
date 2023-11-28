
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"

# plugins
plugins=(
git
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# aliases

eval $(thefuck --alias)
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# run on start
neofetch

eval "$(starship init zsh)"
