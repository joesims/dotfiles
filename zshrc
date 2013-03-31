ZSH=$HOME/.oh-my-zsh
ZSH_THEME="joe"
source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:$PATH"

eval "$(rbenv init -)"

export EDITOR="lime -w"
