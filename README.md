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

Install NerdTree, configure to show hidden files, enable version control:
In `~/.SpaceVim.d/init.toml` add:
```
[options]
  ...
  filemanager = "nerdtree"
  
[[layers]]
  name = "lang#go"

[[layers]]
    name = 'core'
    filetree_show_hidden = true

[[layers]]
    name = 'git'

[[layers]]
    name = 'VersionControl'
```

Open NerdTree on vim startup:
In `~/.SpaceVim/vimrc` add:
" " Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree


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

## GoLang
```
brew install go
mkdir $HOME/go
```

Add this to zshrc:
```
  export GOPATH=$HOME/go 
  export GOROOT=/usr/local/opt/go/libexec
  export PATH=$PATH:$GOPATH/bin
  export PATH=$PATH:$GOROOT/bin
```
