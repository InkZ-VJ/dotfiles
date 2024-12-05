# Ensure Homebrew's binary path is included in PATH
export PATH="/opt/homebrew/bin:$PATH"

if [ -f ~/.zshrc_secret ]; then
    source ~/.zshrc_secret
fi

# Aliases
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias vim='nvim'
alias vi='nvim'
alias c='clear'
alias dot='cd ~/dotfiles'
alias note='cd ~/notes/Knowleage'
alias confn='cd ~/dotfiles/.config/nvim'

# useful command
alias cover='firefox $(pwd)/cover.html'
alias air='air -c ~/.air.toml'
alias dev='nodemon --exec go run --tags dynamic $(shell pwd)/cmd/main.go --signal SIGTERM'
# alias csp='codespell .'

# Shell integrations
eval "$(fzf --zsh)"

# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

source ~/fzf-git.sh/fzf-git.sh

for script in ~/scripts/*.sh; do
    if [ -f "$script" ]; then
        source "$script"
    fi
done

eval "$(zoxide init --cmd cd zsh)"

export PATH="$PATH:$(go env GOPATH)/bin"

autoload -U +X bashcompinit && bashcompinit
