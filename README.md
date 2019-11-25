My dotfiles
===================

Requirements
------------
oh-my-zsh
 sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew
 /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

docker
 wget https://download.docker.com/mac/stable/Docker.dmg ~/Downloads

virtualbox
 open https://www.virtualbox.org/wiki/Downloads

iterm2
 https://www.iterm2.com/downloads.html

solarized iterm2
 curl https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors > ~/Downloads/solarized-dark.itermcolors

Install
-------
 brew bundle dotfiles/Brewfile
 rcup -d dotfiles -x README.md -x LICENSE

Vim
----------------------------
:PlugInstall

Fonts
----------------------------
 git clone https://github.com/powerline/fonts
 ./install.sh

Secrets
----------------------------
Zip them all:
 zip -r secrets.zip .aws .ssh .kube/config .gcloud .pgpass

Put them in 1Password
 uuencode secrets.zip secrets.zip|pbcopy
