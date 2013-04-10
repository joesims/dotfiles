ZSH=$HOME/.oh-my-zsh
ZSH_THEME="joe"
source $ZSH/oh-my-zsh.sh
unsetopt correct

alias ll='ls -al'
alias mkdir='mkdir -p'

export PATH="./bin:/usr/local/bin:$PATH"

eval "$(rbenv init -)"

export EDITOR="lime -w"
