prompt_aws(){}

PROMPT='%F{green}%2c%F{blue}$(aws_prompt_info) $(git_prompt_info) [%f '
RPROMPT='%F{green}%D{%L:%M} %F{yellow}%D{%p}%f'
#RPROMPT=$'%F{blue} %F$(cat ~/tmp/eth-price) %F{green}%D{%L:%M} %F{yellow}%D{%p}%f'

if [ "$SHOW_TWITTER_PROMPT" != false ]; then
  RPROMPT='%F{blue}@it_supertramp '"$RPROMPT"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%F{154}±|%f%F{124}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B☹ %b%F{154}|%f%{$reset_color%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function aws_prompt_info() {
  [[ -z $AWS_PROFILE ]] && return
  echo " (${AWS_PROFILE})"
}
