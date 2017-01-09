# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DISABLE_CORRECTION="true"
ZSH_THEME="thomas-nanotech"
CASE_SENSITIVE="true"
plugins=(berkshelf bundler git history rbenv knife knife_ssh osx thor vagrant)

export EDITOR=vi
source $ZSH/oh-my-zsh.sh

[[ -f ~/.aliases ]] && source ~/.aliases

export AWS_DEFAULT_PROFILE="default"

source ~/.awsrc
source ~/.atlas
source ~/.trellorc

# SSH Agent
ssh-add ~/.ssh/tpeitz.pem &>/dev/null
ssh-add ~/.ssh/devops.pem &>/dev/null
ssh-add ~/.ssh/devops-us.pem &>/dev/null

export GOPATH=$HOME/git/thomas/golang || echo "ERROROROROROR"
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin/packer:$GOPATH/bin:$HOME/bin/terraform:$HOME/git/chef/script:$HOME/google-cloud-sdk/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
source /usr/local/share/zsh/site-functions/_aws

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export GOOGLE_APPLICATION_CREDENTIALS=~/.gcloud/nerdswords.json



# The next line enables shell command completion for gcloud.
if [ -f /Users/tpeitz/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/tpeitz/google-cloud-sdk/completion.zsh.inc'
fi

export KOPS_STATE_STORE=s3://kops-kubernetes-state
