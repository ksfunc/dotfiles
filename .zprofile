eval "$(/opt/homebrew/bin/brew shellenv)"

if [ -f ~/.zprofile.local ]; then
  . ~/.zprofile.local
fi
