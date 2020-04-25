export ZSH=${HOME}/.oh-my-zsh

export ZSH_THEME="tboerger"
export ZSH_CUSTOM=${HOME}/.zsh/custom

plugins=(
	fzf
	history-substring-search
	docker
	encode64
	fd
	git-prompt
	nmap
	perms
	rsync
	screen
	transfer
	tmux
)

if [ -f ${HOME}/.zsh/system ]; then
	source ${HOME}/.zsh/system
fi

if [ -d ${HOME}/.zsh/configs ]; then
	for FILE in ${HOME}/.zsh/configs/*; do
		source ${FILE}
	done
fi

if [ -d ${HOME}/.zsh/aliases ]; then
	for FILE in ${HOME}/.zsh/aliases/*; do
		source ${FILE}
	done
fi

if [ -d ${HOME}/.zsh/functions ]; then
	for FILE in ${HOME}/.zsh/functions/*; do
		source ${FILE}
	done
fi

if [ -f ${ZSH}/oh-my-zsh.sh ]; then
	source ${ZSH}/oh-my-zsh.sh
fi

if [ -f ${HOME}/.zshrc.local ]; then
	source ${HOME}/.zshrc.local
fi

if [ -d ${HOME}/.homesick/repos/homeshick ]; then
	source ${HOME}/.homesick/repos/homeshick/homeshick.sh
fi
