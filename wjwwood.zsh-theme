# https://github.com/wjwwood zsh theme

function is_git() {
  return $(git rev-parse --is-inside-work-tree >/dev/null 2>&1)
}

ZSH_THEME_GIT_PROMPT_PREFIX=" %{%B%F{blue}%}(git"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%B%F{blue}%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function git_vcs_info() {
  if $(is_git); then
    branch=$(git symbolic-ref HEAD 2> /dev/null) || \
    branch="(no branch)"
    ref=$(git rev-parse --short HEAD 2> /dev/null)
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX:${branch#refs/heads/}:${ref}$ZSH_THEME_GIT_PROMPT_SUFFIX$(parse_git_dirty)"
  else
    echo " "
  fi
}

PROMPT='%{%f%k%b%}
%{%B%F{green}%}%n%{%B%F{blue}%}@%{%B%F{cyan}%}%m %{%b%F{magenta}%}%~$(git_vcs_info)%E%{%f%k%b%}
%#%{%f%k%b%} '
