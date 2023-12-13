#!/usr/bin/env bash

install_zsh() {
	local PWD="$1"
	local ZSH="$(which zsh)"
	local USER="$(id -u -n)"

	if ! command -v zsh&> /dev/null; then
		echo "Error: zsh is not installed."
		exit 1
	fi

	ln -s "$PWD/zshenv" "$HOME/.zshenv"
	ln -s "$PWD/zsh" "$ZDOTDIR"

	chsh -s "$ZSH" "$USER"
}

