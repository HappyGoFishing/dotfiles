#
# ~/.bashrc
#

TERMINAL="alacritty"
BROWSER="firefox"
EDITOR="nvim"

# If not running interactively, don't do anything

set -o vi

[[ $- != *i* ]] && return


alias vi="nvim"
alias vim="nvim"
alias dots="cd ~/repos/dotfiles/"

# PS1='[\u@\h \W]\$ '
#
