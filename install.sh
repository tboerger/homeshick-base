#!/bin/bash

UNAME=$(uname)

if [ "$UNAME" == "Linux" ]; then
  PKGS="git-core bash-completion"
  WGET="https://github.com/nvie/gitflow/raw/develop/contrib/gitflow-installer.sh"

  if [ "${EUID}" == "0" ]; then
    aptitude install -y $PKGS
    wget -O - $WGET | bash
  else
    sudo aptitude install -y $PKGS
    wget -O - $WGET | sudo bash
  fi
fi

if [ "$UNAME" == "Darwin" ]; then
  brew install git bash bash-completion
  curl https://github.com/nvie/gitflow/raw/develop/contrib/gitflow-installer.sh | bash
fi

export RBENV_ROOT=$HOME/.rbenv
export PATH="$RBENV_ROOT/shims:$RBENV_ROOT/bin:$PATH"

curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
git clone https://github.com/joefiorini/rbenv-prompt.git $RBENV_ROOT/plugins/rbenv-prompt
git clone https://github.com/jamis/rbenv-gemset.git $RBENV_ROOT/plugins/rbenv-gemset

rbenv install 1.9.3-p194
rbenv global 1.9.3-p194
rbenv rehash

gem update --system
rbenv rehash

gem install bundler rake homesick pry git-up --no-ri --no-rdoc
rbenv rehash

homesick clone tboerger/homesick
homesick symlink tboerger/homesick -f
