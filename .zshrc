eval "$(rbenv init -)"

alias vim=/usr/local/bin/vim

alias be="bundle exec"
alias cber="clear ; bundle exec rspec"
alias rcop="clear ; bundle exec rubocop"

export EDITOR=nvim

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

eval "$(starship init zsh)"
