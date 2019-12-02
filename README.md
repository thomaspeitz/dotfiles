My dotfiles
===================

Requirements
------------
oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

brew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

docker
```
wget https://download.docker.com/mac/stable/Docker.dmg ~/Downloads
```

virtualbox
```
open https://www.virtualbox.org/wiki/Downloads
```

spotify
```
open https://www.spotify.com/de/download/
```

xcode
```
xcode-select --install
```

Brew
----
```
brew bundle dotfiles/Brewfile
```

Dotfiles
-------
```
rcup -d dotfiles -x README.md -x LICENSE
```

Terminal
--------
```
 wget https://raw.githubusercontent.com/tomislav/osx-terminal.app-colors-solarized/master/Solarized%20Dark.terminal
 wget https://raw.githubusercontent.com/tomislav/osx-terminal.app-colors-solarized/master/Solarized%20Light.terminal
 wget https://raw.githubusercontent.com/lysyi3m/macos-terminal-themes/master/schemes/Solarized%20Darcula.terminal
 wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
```

Asdf
----
```
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf plugin-add golang
asdf plugin-add elixir
asdf plugin-add erlang
asdf plugin-add kops
asdf plugin-add python

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git  
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring  

for a in ruby golang elixir erlang kops python nodejs;do asdf list-all $a | grep -v "[a-z]" | tail -n 1 | xargs asdf install $a;done
```

Vim
---
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

In vim
 :PlugInstall

Create vimundo directory
 .vimundo/

Secrets
-------
Zip them all:
```
zip -r secrets.zip .aws .ssh .kube/config .gcloud .pgpass .gnupg
```

Put them in 1Password as file.
