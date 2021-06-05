export JAVA_HOME="$(/usr/libexec/java_home)"
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"

if type "anyenv" > /dev/null 2>&1; then
  export ANYENV_ROOT="$HOME/.anyenv"
  export PATH="$ANYENV_ROOT/bin:$PATH"
  eval "$(anyenv init -)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "~/google-cloud-sdk/path.zsh.inc" ]; then
  . "~/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [ -f "~/google-cloud-sdk/completion.zsh.inc" ]; then
  . "~/google-cloud-sdk/completion.zsh.inc"
fi

autoload -Uz colors
colors

autoload -Uz compinit
compinit

autoload -Uz vcs_info
setopt prompt_subst

zstyle ":vcs_info:git:*" check-for-changes true
zstyle ":vcs_info:git:*" stagedstr "%F{yellow}!"
zstyle ":vcs_info:git:*" unstagedstr "%F{red}+"
zstyle ":vcs_info:*" formats ":%F{green}%c%u%b%f"
zstyle ":vcs_info:*" actionformats ":%b:%a"
precmd() { vcs_info }

PROMPT='%n@%m:%F{cyan}%c%f$vcs_info_msg_0_ %# '

setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt correct
setopt no_beep
