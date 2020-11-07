#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias vi='vim'
export EDITOR='vim'
. ~/.path
#bind -p for help
set -o vi

function play {
	mpv "$(fzf)"
}
