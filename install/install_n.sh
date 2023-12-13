#!/usr/bin/env bash

# Check dependnecies
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

REPOSITORY="$HOME/n"

git clone --depth 1 https://github.com/tj/n.git $REPOSITORY && \
	cd $REPOSITORY && \
	make install && \
	rm -Rf $REPOSITORY || fallback

falllback() {
	rm -Rf $REPOSITORY && \
		echo "# Error: unable to install n node package manager" && \
		exit 1
	}
