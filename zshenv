export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export DOT_LOCAL_BIN="$HOME/.local/bin"

# editor
export EDITOR="$(which nvim)"
export VISUAL="$(which nvim)"

# shell
export SHELL="$(which zsh)"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# history
export HISTFILEFORMAT="[%F %T]"

export HISTFILE="$XDG_STATE_HOME/zsh_history"
export HISTSIZE=10000
export SIZEHIST=10000

# ssh bridge
export SSH_AUTH_SOCK="$XDG_CONFIG_HOME/1password-agent.sock"

# gnupg home
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# n node version manager 
export N_PREFIX="$XDG_DATA_HOME"
NODE_PATH="$N_PREFIX/bin"

# path
export PATH="$NODE_PATH:$PATH"
export PATH="$DOT_LOCAL_BIN:$PATH"

# node
export NODE_DIR="$XDG_DATA_HOME/node"
export NODE_REPL_HISTORY="$NODE_DIR/history"
export NODE_REPL_HISTORY_SIZE=10000
export NODE_REPL_MODE="strict"

# npm
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"

