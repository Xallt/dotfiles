# Environment variables
export PATH="/home/xallt/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/home/xallt/.vimpkg/bin:/opt/nvim-linux64/bin"
export EDITOR=vim

# Path to your oh-my-zsh installation.
export ZSH="/home/xallt/.oh-my-zsh"

#
# ZSH Flags
#
ZSH_THEME="bira"
zstyle :omz:plugins:ssh-agent agent-forwarding on

plugins=(
	git 
	extract 
	z 
	systemd 
	ssh-agent 
	vi-mode 
	zsh-autosuggestions
	bgnotify
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

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

alias vim=nvim

# Python aliases
alias python=python3
alias pip=pip3

# Pacman aliases
alias pacs="sudo pacman -S"
alias pacr="sudo pacman -R"

#
# Key bindings
#
bindkey "^V" edit-command-line
bindkey "^k" history-search-backward
bindkey "^j" history-search-forward

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/home/xallt/yandex-cloud/path.bash.inc' ]; then source '/home/xallt/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/home/xallt/yandex-cloud/completion.zsh.inc' ]; then source '/home/xallt/yandex-cloud/completion.zsh.inc'; fi

# CUDA
export CUDA_HOME="/usr/local/cuda"

export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH="/usr/local/cuda-10.2:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="/usr/local/cuda-11.0/lib64:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="/usr/local/cuda-12.2/lib64:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="/usr/local/cuda-12.2/targets/x86_64-linux/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="/usr/lib/x86_64-linux-gnu:${LD_LIBRARY_PATH}"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/xallt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/xallt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/xallt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/xallt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Install gems without root
export GEM_HOME=$HOME/.gem
export PATH=$PATH:$HOME/.gem/bin
export PATH=$PATH:/media/xallt/HardDrive/miniconda3/bin
export PATH=$PATH:$HOME/.cargo/bin

# Source nerfstudio autocompletions.
if ! command -v compdef &> /dev/null; then
    autoload -Uz compinit
    compinit
fi
source /media/xallt/HardDrive/.virtualenv/python38/lib/python3.8/site-packages/nerfstudio/scripts/completions/setup.zsh
