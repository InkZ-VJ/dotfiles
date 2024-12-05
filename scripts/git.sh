#!/bin/bash

export GIT_EDITOR=nvim

# git
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | bat'
alias ga='git add'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'
