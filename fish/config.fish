if status is-interactive
    # Commands to run in interactive sessions can go here
end
export PATH="$PATH:$(go env GOPATH)/bin"

alias ls='eza -a --icons'
