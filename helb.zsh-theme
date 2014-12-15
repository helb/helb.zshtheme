# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
# 
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
# Mar 2013 ys

# Machine name.
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname
}

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}%{$reset_color%}git:%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}*"

PROMPT="%b%F{cyan}[%F{green}%n%B@%F{green}%m%k%F{yellow}%B%~%b%F{cyan}]% %{$reset_color%}${git_info} %B%F{blue}%# %b%f%k"

#if [[ "$(whoami)" == "root" ]]; then
