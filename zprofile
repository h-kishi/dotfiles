# auto complete
autoload -U compinit
compinit

# prompt
PROMPT='%m:%c %n$ '

# command history
HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000
setopt hist_ignore_dups # Ignore duplication command history list
setopt share_history # share command history data
autoload history-search-end
