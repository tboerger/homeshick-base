source ${HOME}/.bash/config
source ${HOME}/.bash/prompt

if [ -f ${HOME}/.bash/system ]
then
  source ${HOME}/.bash/system
fi

for i in ${HOME}/.bash/config.d/*
do
  source $i
done

for i in ${HOME}/.bash/comp.d/*
do
  source $i
done

if [ -f ${HOME}/.bashrc.local ]
then
  source ${HOME}/.bashrc.local
fi

if [ -d ${HOME}/.homesick/repos/homeshick ]
then
  source ${HOME}/.homesick/repos/homeshick/homeshick.sh
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
