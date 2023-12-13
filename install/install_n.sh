#!/usr/bin/env bash

install_n() {
	REPOSITORY="$HOME/n"

	git clone --depth 1 https://github.com/tj/n.git $REPOSITORY

	cd $REPOSITORY

	if [ "$(id -u)" -eq 0 ]; then
		make install
	else
		sudo make install
	fi

	rm -Rf $REPOSITORY
}

