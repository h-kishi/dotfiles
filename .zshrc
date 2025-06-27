source /opt/homebrew/opt/zinit/zinit.zsh

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit load zdharma/history-search-multi-word

zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

zinit wait lucid atload"zicompinit; zicdreplay" blockf for zsh-users/zsh-completions

export PATH=/opt/homebrew/bin:/opt/homebrew/sbin::$PATH

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
