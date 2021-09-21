prompt_setup_helb(){
    setopt localoptions extendedglob

    ZSH_THEME_GIT_PROMPT_PREFIX=" %F{067}"
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_DIRTY=" %F{160}●"
    ZSH_THEME_GIT_PROMPT_CLEAN=" %F{083}●"

    autoload -U add-zsh-hook
    add-zsh-hook precmd prompt_helb_precmd
}

prompt_helb_precmd(){
    local prompt_char='$'; [ $UID -eq 0 ] && prompt_char='#'
    local user_color='%F{079}'; [ $UID -eq 0 ] && user_color='%F{196}'
    local git_info=$(git_prompt_info)
    local venv_info="%F{244}$(virtualenv_prompt_info)%{$reset_color%}"

    if [ ! -z "$venv_info" ]; then
    	venv_info="${venv_info/\[/[🐍 }"
    fi
    
    if (( ${+KUBECONFIG} )); then
        local kube_info="%F{203}[☸️ $(basename -s .yml $KUBECONFIG)%{$reset_color%}]"
    fi

    PROMPT="%b%F{067}[${user_color}%n%B%F{079}@%F{083}%m%k%F{208}%B%~%b%F{067}]% %{$reset_color%}${venv_info}${kube_info}${git_info} %B%F{075}${prompt_char} %b%f%k"
}

prompt_setup_helb
