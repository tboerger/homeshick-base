source "${HOME}/.bash/config"
source "${HOME}/.bash/functions"
source "${HOME}/.bash/completion"
source "${HOME}/.bash/aliases"
source "${HOME}/.bash/prompt"

GLOBE_RBENV="/usr/local/rbenv"
if [ -d $GLOBE_RBENV ]; then
  export RBENV_ROOT=$GLOBE_RBENV
  export PATH="$RBENV_ROOT/bin:$PATH"

  eval "$(rbenv init -)"
fi

LOCAL_RBENV="${HOME}/.rbenv"
if [ -d $LOCAL_RBENV ]; then
  export RBENV_ROOT=$LOCAL_RBENV
  export PATH="$RBENV_ROOT/bin:$PATH"

  eval "$(rbenv init -)"
fi

if [ -f $HOME/.localrc ]; then
  source $HOME/.localrc
fi
