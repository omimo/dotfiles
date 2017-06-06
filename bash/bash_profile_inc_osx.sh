#!/bin/bash

# Aliases
source /Users/omid/Code/CodeSync/dotfiles/bash/oAliases.sh

# My Paths
export PATH=/Users/omid/Code/CodeSync/dotfiles/git:$PATH
export PATH=/Users/omid/Code/CodeSync/dotfiles/scripts:$PATH
export PATH=/Users/omid/Code/CodeSync/dotfiles/scripts2:$PATH
export PATH=/Users/omid/Code/CodeSync/jlog:/Users/omid/apps/:/Users/omid/apps/nvim-osx64/bin:$PATH
export PATH=$PATH:/Users/omid/Library/Android/sdk/ndk-bundle

# Paths and Libs
export PATH=/usr/local/cuda/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib:$LD_LIBRARY_PATH

export PYTHONPATH=/Users/omid/Code/caffe/distribute/python:$PYTHONPATH
export NACL_SDK_ROOT=/Users/omid/Code/Libs/nacl_sdk/pepper_49

export PATH=/Applications/MATLAB_R2016a.app/bin/:$PATH

export PATH=/usr/local/bin:$PATH

export PATH=/Users/omid/anaconda/bin:$PATH
# Torch

. /Users/omid/torch/install/bin/torch-activate

# Colors
export PS1="\[\033[33m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'

# Git Prompt

# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=1

# GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

# GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
# GIT_PROMPT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files

# GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

# GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
# GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

# as last entry source the gitprompt script
# GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme


if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# use ignore space
HISTCONTROL="ignorespace"


# Android

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# Tiny Care Terminal
source /Users/omid/Code/CodeSync/dotfiles/configs/tiny-care-env
