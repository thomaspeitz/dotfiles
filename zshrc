# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DISABLE_CORRECTION="true"
ZSH_THEME="thomas-nanotech"
SHOW_AWS_PROMPT=false
SHOW_TWITTER_PROMPT=true
plugins=(git gpg-agent aws zsh-autosuggestions kubectl history-substring-search)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=23"

# Ignore gitignore files during fzf search
export FZF_DEFAULT_COMMAND='fd --type f'

# To apply the command to CTRL-T as well
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

source $ZSH/oh-my-zsh.sh

[[ -f ~/.aliases ]] && source ~/.aliases

export GOPATH=$HOME/git/golang
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/git/infra/scripts:$HOME/google-cloud-sdk/bin
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="$HOME/.exenv/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/Users/tpeitz/.asdf/installs/rust/nightly/bin:$PATH"

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

[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

. /usr/local/opt/asdf/asdf.sh

# Do not need java for erlang asdf installation
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"
export PATH="/usr/local/opt/gettext/bin:$PATH"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

rm -f ~/.zcompdump; compinit
source /Users/tpeitz/.asdf/installs/rust/nightly/env
