[[ $- == *i* ]] || return

shopt -s checkwinsize

HISTSIZE=10
HISTCONTROL=ignoreboth
HISTFILESIZE=0

[[ "$SHLVL" = 1 ]] && (( $(tput cols) >= 175 && $(tput lines) >= 50 )) && fastfetch

alias ls="ls -A --color=auto"
alias ll="ls -l"
alias cl="clear"
alias neo="nvim"
alias grep="grep --color=auto"

py() { python3 $1.py; }

run() { npm --prefix ~/.nerd/"${1}" run dev; }

code() {
  pushd ~/.nerd/"${1:-}" > /dev/null || return
  nvim
  popd > /dev/null
}

config() {
  pushd ~/.config/"${1:-}" > /dev/null || return
  nvim
  popd > /dev/null
}

PS1='\n\[\e[0;1;37m\]⏽ \t  \u  \h :  \W $(b=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null) && echo "  $b$(git diff --quiet || echo '')$(git diff --cached --quiet || echo '') ")\n \[\e[32m\] \[\e[0m\]'
