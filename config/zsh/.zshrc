# aliases
source "$ZDOTDIR/aliases/vim.sh"
source "$ZDOTDIR/aliases/tmux.sh"

# history
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY

# dirstack
setopt AUTO_CD

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

setopt CORRECT
setopt CDABLE_VARS
setopt EXTENDED_GLOB

alias d="dirs -v"
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# prompt
fpath=("$ZDOTDIR/prompt" $fpath)
autoload -U simple_prompt.sh; simple_prompt.sh

# completion
autoload -U compinit; compinit

# history search
bindkey '^R' history-incremental-search-backward

