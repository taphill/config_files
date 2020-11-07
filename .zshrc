eval "$(rbenv init -)"

alias vim=/usr/local/bin/vim

alias be="bundle exec"
alias cber="clear ; bundle exec rspec"
alias rcop="clear ; bundle exec rubocop"
alias routes="rails routes -c"

alias co="git branch | fzf --header 'Checkout' | xargs git checkout"
alias track="git branch -a | fzf --header 'Track Branch' | xargs git checkout --track"

export EDITOR=vim

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
    (alacritty)
      eval "$EDITOR ~/.alacritty.yml"
      ;;
    (starship)
      eval "$EDITOR ~/.config/starship.toml"
      ;;
  esac
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="
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

eval "$(starship init zsh)"
