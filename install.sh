#!/usr/bin/env bash

install() {
	local PWD=$(realpath $0)
	local CWD=$(dirname $PWD)

	source "$CWD/zshenv"

	source "$CWD/install/pre_install.sh"
	source "$CWD/install/install_xdg.sh"; install_xdg
	source "$CWD/install/install_n.sh"; install_n
	source "$CWD/install/install_zsh.sh"; install_zsh $CWD
	source "$CWD/install/install_tmux.sh"; install_tmux $CWD
	source "$CWD/install/install_git.sh"; install_git
}

install

