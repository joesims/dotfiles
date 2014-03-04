ZSH=$HOME/.oh-my-zsh
ZSH_THEME="joe"
source $ZSH/oh-my-zsh.sh
unsetopt correct_all
unsetopt beep
bindkey -v

source $HOME/.aliases
source $HOME/.functions

export PATH="./.git/safe/../../bin:/usr/local/bin:$PATH"
export EDITOR="lime -w"

eval "$(rbenv init -)"
