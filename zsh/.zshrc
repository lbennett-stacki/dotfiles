# Theme
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Shell
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd/mm/yyyy"
TERM=screen-256color
export LANG=en_US.UTF-8
export PATH="$HOME/workspace/personal/dotfiles/scripts:$PATH"

# OMZ
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Alises
alias re-source="source ~/.zshrc"
alias sesh="tmux-session"

# ASDF
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Rust
source "$HOME/.cargo/env"
export PATH="$HOME/.asdf/installs/rust/$(asdf current rust | awk '{print $2}')/bin:$PATH"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Postgres
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# WASM
export WASMER_DIR="/Users/luke.bennett/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# JavaScript
export PNPM_HOME="/Users/luke.bennett/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

