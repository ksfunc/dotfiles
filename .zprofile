eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/.local/bin:$PATH"

if [ -f ~/.zprofile.local ]; then
  . ~/.zprofile.local
fi
