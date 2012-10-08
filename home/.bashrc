source "${HOME}/.bash/config"
source "${HOME}/.bash/functions"
source "${HOME}/.bash/completion"
source "${HOME}/.bash/aliases"
source "${HOME}/.bash/prompt"

LOCAL_RBENV="${HOME}/.rbenv"
if [ -d $LOCAL_RBENV ]; then
  eval "$($LOCAL_RBENV/bin/rbenv init -)"
  IS_RBENV=1
fi

GLOBE_RBENV="/usr/local/rbenv"
if [ -d $GLOBE_RBENV ]; then
  eval "$($GLOBE_RBENV/bin/rbenv init -)"
  IS_RBENV=1
fi

if [ ! $IS_RBENV ]; then
  LOCAL_RVM="${HOME}/.rvm"
  if [ -d $LOCAL_RVM ]; then
    source "${LOCAL_RVM}/scripts/rvm"
  fi

  GLOBE_RVM="/usr/local/rvm"
  if [ -d $GLOBE_RVM ]; then
    source "${GLOBE_RVM}/scripts/rvm"
  fi
fi

if [ -f $HOME/.localrc ]; then
  source $HOME/.localrc
fi
