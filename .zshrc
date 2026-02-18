eval "$(mise activate zsh)"

if [ -f ~/.fzf.zsh ]; then
  . ~/.fzf.zsh
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

if [ -f ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi
