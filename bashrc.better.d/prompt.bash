#!/bin/sh

export SHORT_USER=$(whoami | sed -e 's/.*\\//g') # Filter out long group name

export PS1="[${SHORT_USER}@\h \W]\$ "

if [ "${GIT_PROMPT_ENABLE}" ]; then
  if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
  fi
fi
