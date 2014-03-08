unsetopt correct_all
unsetopt beep
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus
bindkey -v

source $HOME/.zsh/aliases
for function in $HOME/.zsh/functions/*; do
  source $function
done
source $HOME/.zsh/prompt.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="./.git/safe/../../bin:/usr/local/bin:$PATH"
export EDITOR="lime -w"

eval "$(rbenv init -)"
