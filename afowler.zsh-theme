if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$reset_color%}%{${fg[green]}%}%1~ $(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}[%*] »%{${reset_color}%} '

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{${fg[white]}%}on %{$fg[yellow]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color%}"
