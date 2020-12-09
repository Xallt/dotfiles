# Environment variables
export PATH="/home/xallt/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/home/xallt/.vimpkg/bin"
export EDITOR=vim

# Path to your oh-my-zsh installation.
export ZSH="/home/xallt/.oh-my-zsh"

#
# ZSH Flags
#
ZSH_THEME="bira"
zstyle :omz:plugins:ssh-agent agent-forwarding on

plugins=(git extract z systemd ssh-agent vi-mode zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

#
# Custom aliases
#
alias zshconfig="vim ~/.zshrc"
alias la="ls -a"
alias ll="ls -alh"
alias tb=taskbook
alias xclip="xclip -sel clip"
alias rd="rm -r"
alias open="xdg-open"
alias subl3='subl3 -a'

# Pacman aliases
alias pacs="sudo pacman -S"
alias pacr="sudo pacman -R"

#
# Key bindings
#
bindkey "^V" edit-command-line
bindkey "^k" history-search-backward
bindkey "^j" history-search-forward
