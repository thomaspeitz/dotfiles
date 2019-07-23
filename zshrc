# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DISABLE_CORRECTION="true"
ZSH_THEME="thomas-nanotech"
CASE_SENSITIVE="true"
plugins=(git history osxgpg-agent)

export EDITOR=vi

source $ZSH/oh-my-zsh.sh

[[ -f ~/.aliases ]] && source ~/.aliases

source ~/.githubrc

export GOPATH=/Users/tpeitz/git/golang
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$GOPATH/bin:$HOME/git/infra/scripts:$HOME/google-cloud-sdk/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="$HOME/.exenv/bin:$PATH"

export KOPS_STATE_STORE=s3://kops-kubernetes-state
export EDITOR='vim'

setopt complete_aliases

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
eval "$(rbenv init -)"
