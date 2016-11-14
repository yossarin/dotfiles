
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ..='cd ..'
alias cd..='cd ..'
alias la='ls -la'
alias ls='ls --color=auto'
alias ll='ls -l'
alias gti='git'
alias tmux='TERM=xterm-256color tmux'
alias psauxgrep='ps aux | grep -v grep | grep'
alias git='LC_ALL=en_US.UTF-8 git'
alias gitc="git checkout"
alias gits="git status"
alias gitf="git fetch"
alias gitfa="git fetch --all"
alias gti="git"
alias agq="ag -Q"


parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
     PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\n\$ '
else
     PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
