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

spotify
 open https://www.spotify.com/de/download/

terminal
 wget https://raw.githubusercontent.com/tomislav/osx-terminal.app-colors-solarized/master/Solarized%20Dark.terminal
 wget https://raw.githubusercontent.com/tomislav/osx-terminal.app-colors-solarized/master/Solarized%20Light.terminal
 wget https://raw.githubusercontent.com/lysyi3m/macos-terminal-themes/master/schemes/Solarized%20Darcula.terminal
 wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip

Install
-------
 brew bundle dotfiles/Brewfile
 rcup -d dotfiles -x README.md -x LICENSE

ASDF
------
```
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add kops https://github.com/Antiarchitect/asdf-kops.git
asdf plugin-add python

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git  
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring  
```

Vim
----------------------------
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

In vim
 :PlugInstall

Create vimundo directory
 .vimundo/

Fonts
----------------------------
 git clone https://github.com/powerline/fonts
 ./install.sh

Secrets
----------------------------
Zip them all:
 zip -r secrets.zip .aws .ssh .kube/config .gcloud .pgpass .gpg

Put them in 1Password as file.
