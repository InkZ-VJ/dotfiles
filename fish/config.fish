if status is-interactive
    # Commands to run in interactive sessions can go here
end
export PATH="$PATH:$(go env GOPATH)/bin"

# Ensure Homebrew's binary path is included in PATH
export PATH="/opt/homebrew/bin:$PATH"

# Aliases
alias ls='eza -a --icons'
alias vim='nvim'
alias c='clear'
alias home='cd ~'
alias dot='cd ~/dotfiles'
