ZSH=$HOME/.oh-my-zsh
ZSH_THEME="joe"
source $ZSH/oh-my-zsh.sh
unsetopt correct_all
unsetopt beep

eval "$(rbenv init -)"

source $HOME/.aliases
source $HOME/.functions

export PATH="./bin:/usr/local/bin:$PATH"

export EDITOR="lime -w"
