#!/usr/bin/env bash

install_zsh() {
	local PWD="$1"

	if ! command -v zsh&> /dev/null; then
		echo "Error: zsh is not installed."
		exit 1
	fi

	mkdir -p "$ZDOTDIR"

	ln -s "$PWD/zshenv" "$HOME/.zshenv"
	ln -S "$PWD/zsh" "$ZDOTDIR"
}

