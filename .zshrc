# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ccat="/bin/cat"
alias cat="bat"

alias lls="/bin/ls"
alias ls="exa --icons --header --links"
alias ll="exa --long --icons --header --links"
alias lla="exa --all --long --icons --header --links"
