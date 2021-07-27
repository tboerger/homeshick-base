if hash dircolors 2> /dev/null; then
	if [[ -f ${HOME}/.dir_colors ]]; then
		eval $(dircolors -b ~/.dir_colors)
	elif [[ -f /etc/DIR_COLORS ]]; then
		eval $(dircolors -b /etc/DIR_COLORS)
	fi
else
	if hash gdircolors 2> /dev/null; then
		if [[ -f ${HOME}/.dir_colors ]]; then
			eval $(gdircolors -b ~/.dir_colors)
		elif [[ -f /etc/DIR_COLORS ]]; then
			eval $(gdircolors -b /etc/DIR_COLORS)
		fi
	fi
fi

if [ -f ${HOME}/.bash/system ]; then
	source ${HOME}/.bash/system
fi

for FILE in ${HOME}/.bash/configs/*; do
	source ${FILE}
done

for FILE in ${HOME}/.bash/aliases/*; do
	source ${FILE}
done

for FILE in ${HOME}/.bash/completions/*; do
	source ${FILE}
done

for FILE in ${HOME}/.bash/functions/*; do
	source ${FILE}
done

if [ -f ${HOME}/.bashrc.local ]; then
	source ${HOME}/.bashrc.local
fi

if [ -d ${HOME}/.homesick/repos/homeshick ]; then
	source ${HOME}/.homesick/repos/homeshick/homeshick.sh
fi
