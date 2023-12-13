#!/usr/bin/env bash

install_tmux() {
	local PWD="$1"

	ln -s "$PWD/tmux" "$XDG_CONFIG_HOME/tmux"
}

