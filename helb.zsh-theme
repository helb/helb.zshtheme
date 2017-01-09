# Machine name
function box_name {
    hostname
}

# Git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}%{$reset_color%}git:%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}*"

# Return value
local retval='%(?.. %{$bg[red]%}%{$fg[black]%}%?%{$reset_color%})'

PROMPT="%b%F{cyan}[%F{green}%n%B@%F{green}%m%k%F{yellow}%B%~%b%F{cyan}]% %{$reset_color%}${git_info}${retval} %B%F{blue}%# %b%f%k"
