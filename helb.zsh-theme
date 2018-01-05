# Prompt for users and root
function prompt_char {
    if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

# Git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %F{067}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{160}●"
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{083}●"

# Return value
local retval="%(?.. %B%{$fg[red]%} %? %b%{$reset_color%})"

PROMPT="%b%F{067}[%F{079}%n%B@%F{083}%m%k%F{208}%B%~%b%F{067}]% %{$reset_color%}${git_info} %B%F{075}$(prompt_char) %b%f%k"
RPROMPT="${retval}"
