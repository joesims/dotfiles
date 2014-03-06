autoload colors
colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

setopt prompt_subst

GIT_PROMPT_PREFIX="%{$fg[blue]%}[%{$fg[white]%}"
GIT_PROMPT_SUFFIX="%{$fg[blue]%}]"
GIT_PROMPT_DIRTY=" %{$fg[yellow]%}±"
GIT_PROMPT_CLEAN=""

parse_git_branch() {
  (command git symbolic-ref -q HEAD || command git name-rev --name-only --no-undefined --always HEAD) 2>/dev/null
}

parse_git_dirty() {
  if command git diff-index --quiet HEAD 2> /dev/null; then
    echo "$GIT_PROMPT_CLEAN"
  else
    echo "$GIT_PROMPT_DIRTY"
  fi
}

git_status() {
  local git_where="$(parse_git_branch)"
  if [ -n "$git_where" ]; then
    git_where="${git_where#(refs/heads/|tags/)}"
    echo "${GIT_PROMPT_PREFIX}${git_where}$(parse_git_dirty)$GIT_PROMPT_SUFFIX "
  fi
}

PROMPT='%{$fg[cyan]%}%2c $(git_status)%{$reset_color%}'
