WIRELESS_INTERFACE=$(ip link \
	| awk -F ":" '/^[0-9]: wl/ {sub(" ",""); print $2}')
ETHERNET_INTERFACE=$(ip link \
	| awk -F ":" '/^[0-9]: en/ {sub(" ",""); print $2}')

export WIRELESS_INTERFACE ETHERNET_INTERFACE
export KALEIDOSCOPE_DIR=${HOME}/build/Kaleidoscope

# so pinentry knows the current tty
export GPG_TTY=$(tty)

# * Startx on login if tty1
if [[ $(tty) == /dev/tty1 ]]; then
	# session=bspwm
	# startx ~/.xinitrc $session -- -keeptty &> ~/.xorg.log
	Hyprland
elif [[ $- == *i* ]]; then
	# check if interactive
	zsh
fi
