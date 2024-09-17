if status is-interactive
    # Commands to run in interactive sessions can go here
end

export PATH="$PATH:$(go env GOPATH)/bin"

# Ensure Homebrew's binary path is included in PATH
export PATH="/opt/homebrew/bin:$PATH"

# Aliases
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias vim='nvim'
alias vi='nvim'
alias c='clear'
alias dot='cd ~/dotfiles'
alias confn='cd ~/dotfiles/nvim'

# git
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gau='git add -u'
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

# useful command
alias cover='firefox $(pwd)/cover.html'
alias go-test='go test -cover ./... -coverprofile=cover.out -covermode count && go tool cover -html cover.out -o cover.html'
alias dev='nodemon --exec go run --tags dynamic $(shell pwd)/cmd/main.go --signal SIGTERM'

zoxide init fish | source
eval "$(zoxide init --cmd cd fish)"
