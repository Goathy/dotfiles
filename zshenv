export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_STATE_HOME="$XDG_CONFIG_HOME/local/state"

# editor
export EDITOR="$(which nvim)"
export VISUAL="$(which nvim)"

# shell
export SHELL="$(which zsh)"

# history
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SIZEHIST=10000

# ssh bridge
export SSH_AUTH_SOCK="$XDG_CONFIG_HOME/1password-agent.sock"

# gnupg home
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# n node version manager 
export N_PREFIX="$XDG_DATA_HOME/n"

# path
export PATH="$N_PREFIX/bin:$PATH"

# node
export NODE_DIR="$XDG_DATA_HOME/node"
export NODE_REPL_HISTORY="$NODE_DIR/history"
export NODE_REPL_HISTORY_SIZE=10000
export NODE_REPL_MODE="strict"

