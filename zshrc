unsetopt correct_all
unsetopt beep
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus
bindkey -v

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history
setopt hist_ignore_dups
setopt inc_append_history
setopt share_history

source $HOME/.zsh/aliases
for function in $HOME/.zsh/functions/*; do
  source $function
done
source $HOME/.zsh/prompt.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="./.git/safe/../../bin:/usr/local/bin:$PATH"
export EDITOR="lime -w"

eval "$(rbenv init -)"
