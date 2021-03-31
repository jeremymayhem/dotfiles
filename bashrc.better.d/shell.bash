#!/bin/env bash

shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"   # mem/file sync

shopt -s cdspell     # Correct spelling of directories
stty -ixon           # Disable terminal suspension

# Enable super powers for fasd
if command -v fasd &> /dev/null; then
  eval "$(fasd --init auto)"
  alias j='fasd_cd -d'
fi

#Devbox tab completion
source <(devbox completion)
