# ~/.zshrc

# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- ('$branch')'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
prompt='%F{green}%~%f %F{blue}$(git_branch_name)%f %F{red}>%f '
RPROMPT="[%D{%f/%m/%y} | %D{%L:%M:%S}]"

# Alias to clear aws cli session information
alias awsclear='unset AWS_ACCESS_KEY_ID && unset AWS_SESSION_TOKEN && unset AWS_SECRET_ACCESS_KEY'

# ls alias for color-mode
alias ls='ls -lhaG'

# git commands
alias gittree='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# go
export GOPATH=$HOME/go 
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
