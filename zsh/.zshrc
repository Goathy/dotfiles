# aliases
source "$ZDOTDIR/aliases/vim.sh"
source "$ZDOTDIR/aliases/tmux.sh"
source "$ZDOTDIR/aliases/wsl.sh"

# history
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS

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
# autoload -Uz compinit
# compinit -d ~/.config/zsh/.zcompdump

# history search
bindkey '^R' history-incremental-search-backward

# ohmyzsh

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

plugins=(docker)

source "$ZDOTDIR/ohmyzsh/oh-my-zsh.sh" 

