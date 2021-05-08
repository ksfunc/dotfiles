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
