#!/usr/bin/env bash

install() {
	local PWD=$(realpath $0)
	local CWD=$(dirname $PWD)

	source "$CWD/zshenv"

	source "$CWD/install/pre_install.sh"
	source "$CWD/install/install_xdg.sh"; install_xdg
	source "$CWD/install/install_n.sh"; install_n
	source "$CWD/install/install_zsh.sh"; install_zsh $CWD
}

is_sudo() {
	if ["$(id -u)" -ne 0 ]; then
		echo "The script is running as root, so you have sudo privileges."
		exit 1
	fi 
}

is_sudo
install
