if type "asdf" > /dev/null 2>&1; then
  . "$(brew --prefix asdf)/libexec/asdf.sh"
  . ~/.asdf/plugins/java/set-java-home.zsh
fi

if [ -f ~/google-cloud-sdk/path.zsh.inc ]; then
  # The next line updates PATH for the Google Cloud SDK.
  . ~/google-cloud-sdk/path.zsh.inc
fi
if [ -f ~/google-cloud-sdk/completion.zsh.inc ]; then
  # The next line enables shell command completion for gcloud.
  . ~/google-cloud-sdk/completion.zsh.inc
fi

setopt share_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

autoload -Uz colors && colors

PROMPT="%n@%m:%F{cyan}%c%f %# "
