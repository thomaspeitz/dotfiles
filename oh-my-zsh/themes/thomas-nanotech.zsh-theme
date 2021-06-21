PROMPT='%F{green}%2c%F{blue}$(aws_prompt_info)$(kube_prompt_info) $(git_prompt_info) %f'
RPROMPT='%F{green}%D{%L:%M} %F{yellow}%D{%p}%f'

if [ "$SHOW_TWITTER_PROMPT" != false ]; then
  RPROMPT='%F{blue}@tpeitz_dus '"$RPROMPT"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%F{154}±|%f%F{124}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B☹ %b%F{154}|%f%{$reset_color%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function aws_prompt_info() {
  [[ -z $AWS_PROFILE ]] && return
  echo " (${AWS_PROFILE})"
}

function kube_prompt_info() {
  [[ -z $CURRENT_CLUSTER$NEW_CLUSTER ]] && return
  echo " (${CURRENT_CLUSTER} | ${NEW_CLUSTER})"
}

function spanish_prompt_info() {
  cat ~/.spanish-words |head -n 40 |sort -R |head -n 1 | awk 'BEGIN{ FS="—" } {print "%F{blue}" $2 "\t\t\t\t\t\t\t%F{white}" $1}'
}

function prompt_end() {
 print -n "\n[%f "
}
