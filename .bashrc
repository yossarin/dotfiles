
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias la='ls -la'
alias ls='ls --color=auto'
alias ll='ls -l'

PS1='[\u@\h \W]\$ '

