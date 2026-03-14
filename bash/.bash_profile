[[ $- == *i* ]] || return

shopt -s checkwinsize

HISTSIZE=10
HISTFILESIZE=0

uwsm check may-start && [ "$XDG_VTNR" -eq 1 ] && exec uwsm start hyprland-uwsm.desktop
