#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# variables
PS1='[\u@\h \W]\$ '
export MANPAGER="nvim +Man!"

# command aliases
alias ls='ls --color=auto'
alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CFlh'
alias fastfetch="fastfetch -c ~/.config/fastfetch/neofetch.jsonc"
alias vim="nvim"
alias vi="nvim"


# cd aliases
alias repos="cd ~/repos"
alias dots="cd ~/repos/dotfiles"

fastfetch
