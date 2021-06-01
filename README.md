# mac-settings
My setup for working on Mac

## GitHub
Hide user email with:
```
git config user-email cmavromichalis@users.noreply.github.com
```

## brew
https://brew.sh/

## iTerm2
https://iterm2.com/

Molokai profile 
https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Molokai.itermcolors

## Space-Vim
https://spacevim.org/

Fix the question mark showing by installing a compatible font
```
brew cask install font-hack-nerd-font
brew tap homebrew/cask-fonts

In iTerm2 go Preferences -> Profiles -> (Profile) -> Text -> Font -> Hack Nerd Font Mono
```

## Python
```
brew install pyenv
pyenv install <latest version> # user `pyenv install --list`
pyenv global 3.9.5
```

Add this to zshrc:
```
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
```
