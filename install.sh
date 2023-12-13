#!/usr/bin/env bash

PWD=$(realpath $0)
CWD=$(dirname $PWD)

source "$CWD/zshenv"

source "$CWD/install/install_xdg.sh"
source "$CWD/install/install_n.sh"
