#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export PS1='\e[1;31m[\e[1;33m\u\e[1;32m@\e[1;34m\h \e[1;35m\W\e[m\e[1;31m]\e[m$ '
alias vi='vim'
export EDITOR='vim'
. ~/.path
#bind -p for help
set -o vi

function play {
	mpv "$(fzf)"
}
