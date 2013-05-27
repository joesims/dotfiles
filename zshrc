ZSH=$HOME/.oh-my-zsh
ZSH_THEME="joe"
source $ZSH/oh-my-zsh.sh
unsetopt correct_all
unsetopt beep

alias ll='ls -al'
alias mkdir='mkdir -p'
alias du='du -h -d1'
alias tiga='tig --all'
alias tigs='tig status'

eval "$(rbenv init -)"

export PATH="./bin:/usr/local/bin:$PATH"

export EDITOR="lime -w"
