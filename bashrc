#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


#command aliases
alias fastfetch="fastfetch -c ~/.config/fastfetch/neofetch.jsonc"
#directory shortcuts
alias repos="cd ~/repos"
alias dots="cd ~/repos/dotfiles"

fastfetch
