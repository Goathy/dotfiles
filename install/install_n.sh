#!/usr/bin/env bash

install_n() {
	REPOSITORY="$HOME/n"

	git clone --depth 1 https://github.com/tj/n.git $REPOSITORY && \
		cd $REPOSITORY && \
		make install && \
		rm -Rf $REPOSITORY || fallback

	}

	falllback() {
		rm -Rf $REPOSITORY && \
			echo "# Error: unable to install n node package manager" && \
			exit 1
		}

