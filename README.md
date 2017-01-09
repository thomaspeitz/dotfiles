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

Install
-------

Clone onto your laptop:

    git clone git://github.com/tsupertramp/dotfiles.git

Install [rcm](https://github.com/thoughtbot/rcm):

    brew bundle dotfiles/Brewfile

Install:

    rcup -d dotfiles -x README.md -x LICENSE

This will create symlinks for config files in your home directory. The
`-x` options, which exclude the `README.md` and `LICENSE` files, are
needed during installation but can be skipped once the `.rcrc`
configuration file is symlinked in.

You can safely run `rcup` multiple times to update:

    rcup

Make your own customizations
----------------------------

Put your customizations in dotfiles appended with `.local`:

* `~/.aliases.local`
* `~/.gitconfig.local`
* `~/.vimrc.local`
* `~/.vimrc.bundles.local`
* `~/.zshrc.local`

Secrets
----------------------------
Zip them all:
 zip -r secrets.zip .ssh .awsrc .atlas .kube/config .gcloud .pgpass


Put them in 1Password
 uuencode secrets.zip secrets.zip|pbcopy
