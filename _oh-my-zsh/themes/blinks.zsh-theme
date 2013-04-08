function is_git() {
  return $(git rev-parse --is-inside-work-tree >/dev/null 2>&1)
}

function is_hg() {
  cwd=$(pwd)
  while [[ ${cwd} != '/' ]]; do
    if [[ -d ${cwd}/.hg ]]; then
      return 0
    fi
    cwd=$(cd ${cwd}/..;pwd)
  done
  return 1
}

function get_hg_branch() {
  cwd=$(pwd)
  while [[ ${cwd} != '/' ]]; do
    if [[ -d ${cwd}/.hg ]]; then
      echo $(cat ${cwd}/.hg/branch)
      return 0
    fi
    cwd=$(cd ${cwd}/..;pwd)
  done
  return 1
}

function _prompt_char() {
  if $(is_git); then
    echo "%{%F{blue}%}±%{%f%k%b%}"
  elif $(is_hg); then
    echo "%{%F{cyan}%}☿%{%f%k%b%}"
  else
    echo ' '
  fi
}

parse_hg_dirty() {
  if [[ -n $(hg status 2> /dev/null) ]]; then
    echo "$ZSH_THEME_HG_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_HG_PROMPT_CLEAN"
  fi
}

function my_vcs_info() {
  if $(is_git); then
    branch=$(git symbolic-ref HEAD 2> /dev/null) || \
    branch="(no branch)"
    ref=$(git rev-parse --short HEAD 2> /dev/null)
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX:${branch#refs/heads/}:${ref}$ZSH_THEME_VCS_PROMPT_SUFFIX$(parse_git_dirty)"
  elif $(is_hg); then
    branch=$(get_hg_branch) || \
    branch="(no branch)" || return
    # Ugh, hg is SO slow...
    # ref=$(hg parents --template="{node}\n" 2> /dev/null)
    # echo "$ZSH_THEME_HG_PROMPT_PREFIX:${branch}:${ref:0:7}$ZSH_THEME_VCS_PROMPT_SUFFIX$(parse_hg_dirty)"
    echo "$ZSH_THEME_HG_PROMPT_PREFIX:${branch}$ZSH_THEME_VCS_PROMPT_SUFFIX$(parse_hg_dirty)"
    # echo "$ZSH_THEME_HG_PROMPT_PREFIX$ZSH_THEME_VCS_PROMPT_SUFFIX"
  else
    echo ' '
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" %{%b%F{blue}%}(git"
ZSH_THEME_HG_PROMPT_PREFIX=" %{%b%F{blue}%}(hg"
ZSH_THEME_VCS_PROMPT_SUFFIX="%{%f%k%b%F{blue}%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%B%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY=" %{%B%F{red}%}*%{%f%k%b%}"
ZSH_THEME_HG_PROMPT_CLEAN=""

PROMPT='%{%f%k%b%}
%F{green}%}%n%{%B%F{blue}%}@%{%b%F{cyan}%}%m%{%b%F{magenta}%}:%~$(my_vcs_info)%{%f%k%b%}
%#%{%f%k%b%} '

RPROMPT='$(_prompt_char) $(battery_pct_prompt)'
