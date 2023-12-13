#!/usr/bin/env bash

install() {
	local PWD=$(realpath $0)
	local CWD=$(dirname $PWD)

	source "$CWD/zshenv"

	source "$CWD/install/install_xdg.sh"; install_xdg
	source "$CWD/install/install_n.sh"; install_n
	source "$CWD/install/install_zsh.sh"; install_zsh $CWD
}

install
