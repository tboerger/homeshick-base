if [ -f ${HOME}/.zsh/system ]; then
	source ${HOME}/.zsh/system
fi

for FILE in ${HOME}/.zsh/configs/*; do
	source ${FILE}
done

for FILE in ${HOME}/.zsh/aliases/*; do
	source ${FILE}
done

for FILE in ${HOME}/.zsh/completions/*; do
	source ${FILE}
done

for FILE in ${HOME}/.zsh/functions/*; do
	source ${FILE}
done

export ZSH=${HOME}/.oh-my-zsh

ZSH_THEME="robbyrussell"
ZSH_CUSTOM=${HOME}/.zsh/custom

plugins=(
	git
	fzf
)

# linux
plugins+=(

)

# macos
plugins=(
	direnv
	gpg-agent
	gopass
)

if [ -f ${ZSH}/oh-my-zsh.sh ]; then
	source ${ZSH}/oh-my-zsh.sh
fi

if [ -f ${HOME}/.zshrc.local ]; then
	source ${HOME}/.zshrc.local
fi

if [ -d ${HOME}/.homesick/repos/homeshick ]; then
	source ${HOME}/.homesick/repos/homeshick/homeshick.sh
fi