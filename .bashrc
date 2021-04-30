#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
alias vi='vim'
export EDITOR='vim'

#bind -p for help
set -o vi

function play {
	mpv "$(fzf)"
}

function rdp {
	read -p "rdp username:" rdpuser
	read -p "rdp hostname:" rdpaddress
	xfreerdp /u:"$rdpuser" /v:"$rdpaddress":3389

}

function rdpport {
	read -p "rdp username:" rdpuser
	read -p "rdp hostname:" rdpaddress
	read -p "rdp port:" rdpport
	xfreerdp /u:"$rdpuser" /v:"$rdpaddress":$rdpport

}

alias vm='virt-manager -c qemu:///system'
alias v='virsh -c qemu:///system'
