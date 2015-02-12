
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ..='cd ..'
alias cd..='cd ..'
alias la='ls -la'
alias ls='ls --color=auto'
alias ll='ls -l'

PS1='[\u@\h \W]\$ '
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\]'
