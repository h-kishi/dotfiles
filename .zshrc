export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "marzocchi/zsh-notify"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "yous/lime"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

export PATH=/opt/homebrew/bin:/opt/homebrew/sbin::$PATH

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
