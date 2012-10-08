source $HOME/.bash/config
source $HOME/.bash/functions

export_paths

source $HOME/.bash/completion
source $HOME/.bash/aliases
source $HOME/.bash/prompt

LOCAL_RBENV=$HOME/.rbenv
if [ -d $HOME/.rbenv ]; then
  eval "$($LOCAL_RBENV/bin/rbenv init -)"
fi

GLOBE_RBENV=/usr/local/rbenv
if [ -d $GLOBE_RBENV ]; then
  eval "$($GLOBE_RBENV/bin/rbenv init -)"
fi

if [ -f $HOME/.localrc ]; then
  source $HOME/.localrc
fi
