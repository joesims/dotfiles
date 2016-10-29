unsetopt correct_all
unsetopt beep
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus
bindkey -v

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history

autoload -U compinit
compinit
unsetopt menu_complete
setopt auto_menu
setopt complete_in_word
setopt always_to_end
zmodload -i zsh/complist
zstyle ':completion:*' menu select

source $HOME/.zsh/aliases
for function in $HOME/.zsh/functions/*; do
  source $function
done
source $HOME/.zsh/prompt.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

export PATH="./.git/safe/../../bin:$PATH"
export EDITOR="lime -w"

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
