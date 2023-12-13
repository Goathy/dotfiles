#!/usr/bin/env bash

install_xdg() {
	mkdir -p $XDG_CONFIG_HOME
	mkdir -p $XDG_CACHE_HOME
	mkdir -p $XDG_DATA_HOME
	mkdir -p $XDG_STATE_HOME
}

