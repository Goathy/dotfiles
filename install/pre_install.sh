#!/usr/bin/env bash

if ! command -v git&> /dev/null; then
	echo "Error: git is not installed."
	exit 1
fi

if ! command -v make&> /dev/null; then
	echo "Error: make is not installed."
	exit 1
fi

if ! command -v curl&> /dev/null; then
	echo "Error: curl is not installed."
	exit 1
fi

if ! command -v zsh&> /dev/null; then
	echo "Error: zsh is not installed."
	exit 1
fi

if ! command -v tmux&> /dev/null; then
	echo "Error: tmux is not installed."
	exit 1
fi

if ! command -v nvim&> /dev/null; then
	echo "Error: nvim is not installed."
	exit 1
fi

