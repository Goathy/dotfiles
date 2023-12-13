#!/usr/bin/env bash

install_git() {
	mkdir -p "$XDG_CONFIG_HOME/git"
	touch "$XDG_CONFIG_HOME/git/config"
}
