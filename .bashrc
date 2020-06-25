#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# --- Set vim as editor --- ##
EDITOR="nvim"



powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh


# System Maintenance
alias sdn="sudo shutdown now"

#Some useful aliases
alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="nvim"
alias sv="sudo nvim"
alias ka="kill all"
alias g="git"
alias mkd="mkdir -pv"

# Adding Colour
alias ls='ls -hN --color=auto --group-directories-first'

# Dofiles Git command
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'


#Other

