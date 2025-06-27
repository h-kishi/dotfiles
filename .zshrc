source /opt/homebrew/opt/zinit/zinit.zsh

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit load zdharma/history-search-multi-word

zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

zinit wait lucid atload"zicompinit; zicdreplay" blockf for zsh-users/zsh-completions

export PATH=/opt/homebrew/bin:/opt/homebrew/sbin::$PATH

export HISTSIZE=10000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
