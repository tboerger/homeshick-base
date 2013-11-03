source ~/.bash/config
source ~/.bash/prompt

if [ -f ~/.bash/system ]
then
  source ~/.bash/system
fi

for i in ~/.bash/config.d/*
do
  source $i
done

for i in ~/.bash/comp.d/*
do
  source $i
done

if [ -f ~/.localrc ]
then
  source ~/.localrc
fi
