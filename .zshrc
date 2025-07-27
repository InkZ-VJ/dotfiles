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
alias airc='air -c $HOME/.air.toml'
alias dev='nodemon --exec go run --tags dynamic $(shell pwd)/cmd/main.go --signal SIGTERM'

for script in $HOME/scripts/*.sh; do
    if [ -f "$script" ]; then
        source "$script"
    fi
done

if [[ -n $GHOSTTY_RESOURCES_DIR ]]; then
  source "$GHOSTTY_RESOURCES_DIR"/shell-integration/zsh/ghostty-integration
fi

eval "$(zoxide init --cmd cd zsh)"
eval "$(direnv hook zsh)"
eval "$(oh-my-posh init zsh --config $HOME/dotfiles/.config/ohmyposh/zen.toml)"
# eval "$(starship init zsh)"

export PATH="$PATH:$(go env GOPATH)/bin"
export EDITOR=nvim

autoload -U +X bashcompinit && bashcompinit
