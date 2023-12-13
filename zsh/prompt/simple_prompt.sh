function prompt_git_branch () {
        autoload -Uz vcs_info
        precmd_functions+=( vcs_info )
        setopt prompt_subst
        zstyle ':vcs_info:git:*' formats '%b'
}

function simple_prompt_setup () {
        prompt_git_branch
        PROMPT="%(?.%F{green}+.%F{red}-)%f [%2~] ($(whoami)) > "
        RPROMPT='${vcs_info_msg_0_}'
}

simple_prompt_setup

