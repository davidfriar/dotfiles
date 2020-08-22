local ret_status="%(?:%{$FG[010]%} :%{$FG[009]%} )"
PROMPT='%{$fg[black]%}%{$bg[yellow]%}$(virtualenv_prompt_info)%{$reset_color%} ${ret_status}%{$fg[cyan]%}%~%{$reset_color%}$(git_prompt_info) '


local BATTERY_GAUGE_PREFIX=' '
local BATTERY_GAUGE_SUFFIX=' '
local BATTERY_GAUGE_FILLED_SYMBOL='●'
local BATTERY_GAUGE_EMPTY_SYMBOL='○'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="] %b%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="]"

ZSH_THEME_VIRTUALENV_PREFIX="  "
ZSH_THEME_VIRTUALENV_SUFFIX=" "

MODE_INDICATOR="%{$fg_bold[red]%}%{$reset_color%}"

