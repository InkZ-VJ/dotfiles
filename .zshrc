# Ensure Homebrew's binary path is included in PATH
export PATH="/opt/homebrew/bin:$PATH"

if [ -f $HOME/.zshrc_secret ]; then
    source $HOME/.zshrc_secret
fi

# Aliases
alias ls='eza -a --icons=always'
alias ll='eza -al --icons=always'
alias lt='eza -a --tree --level=1 --icons=always'
alias ff='fastfetch'

alias vim='nvim'
alias vi='nvim'
alias c='clear'
alias dot='cd ~/dotfiles'
alias note='cd ~/notes/Knowleage'
alias confn='cd ~/dotfiles/.config/nvim'

# useful command
alias cover='firefox $(pwd)/cover.html'
alias air='air -c $HOME/.air.toml'
alias dev='nodemon --exec go run --tags dynamic $(shell pwd)/cmd/main.go --signal SIGTERM'

for script in $HOME/scripts/*.sh; do
    if [ -f "$script" ]; then
        source "$script"
    fi
done

eval "$(zoxide init --cmd cd zsh)"

export PATH="$PATH:$(go env GOPATH)/bin"

autoload -U +X bashcompinit && bashcompinit

colorscript -e square
colorscript -e fade
