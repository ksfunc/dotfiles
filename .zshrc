if type "anyenv" > /dev/null 2>&1; then
  export ANYENV_ROOT="$HOME/.anyenv"
  export PATH="$ANYENV_ROOT/bin:$PATH"
  eval "$(anyenv init -)"
fi

if type "asdf" > /dev/null 2>&1; then
  . "$(brew --prefix asdf)/libexec/asdf.sh"
fi

export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then
  . "$HOME/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then
  . "$HOME/google-cloud-sdk/completion.zsh.inc"
fi

setopt share_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

autoload -Uz colors && colors

PROMPT="%n@%m:%F{cyan}%c%f %# "
