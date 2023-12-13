#!/usr/bin/env bash

install_zsh() {
	local PWD="$1"

	ln -s "$PWD/zshenv" "$HOME/.zshenv"
	ln -s "$PWD/zsh" "$ZDOTDIR"
}

