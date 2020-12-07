eval "$(rbenv init -)"

alias vim=/usr/local/bin/vim

alias be="bundle exec"
alias cbe="clear ; bundle exec"
alias cber="clear ; bundle exec rspec"
alias rcop="clear ; bundle exec rubocop"
alias routes="rails routes -c"

alias co="git branch | fzf --header 'Checkout' | xargs git checkout"
alias track="git branch -a | fzf --header 'Track Branch' | xargs git checkout --track"

export EDITOR=vim
export TERM=xterm-256color
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

function edit() {
  case "$1" in
    (vim)
      eval "$EDITOR ~/.vimrc"
      ;;
    (zsh)
      eval "$EDITOR ~/.zshrc"
      ;;
    (tmux)
      eval "$EDITOR ~/.tmux.conf"
      ;;
    (alacritty)
      eval "$EDITOR ~/.alacritty.yml"
      ;;
    (starship)
      eval "$EDITOR ~/.config/starship.toml"
      ;;
    (rg)
      eval "$EDITOR ~/.ripgreprc"
      ;;
  esac
}

function macd() {
  eval "mkdir $1 && cd $1"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="
--layout=reverse
--height=40%
--color=fg:#ebdbb2,bg:#282828,hl:#b8bb26
--color=fg+:#ebdbb2,bg+:#3c3836,hl+:#b8bb26
--color=info:#d3869b,prompt:#73fbf1,pointer:#b8e466
--color=marker:#fe8019,spinner:#d3869b,header:#d3869b
--prompt='∼ '
--pointer='➜ '
--marker='✓ '
"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# added by travis gem
[ ! -s /Users/taylorphillips/.travis/travis.sh ] || source /Users/taylorphillips/.travis/travis.sh

eval "$(starship init zsh)"
