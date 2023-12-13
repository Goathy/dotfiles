#!/usr/bin/env bash

install_nvim() {
	local PWD="$1"

	ln -s "$PWD/nvim" "$XDG_CONFIG_HOME/nvim"
}

