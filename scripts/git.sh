#!/bin/bash

export GIT_EDITOR=nvim

# git
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff --output-indicator-new=" " --output-indicator-old=" " | bat'
alias ga='git add'
alias gap='ga --patch'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n"'
