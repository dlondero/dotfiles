source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
PS1='\u@\h:\w\[\e[0;34m\]$(__git_ps1 " (%s)")\[\e[m\]$ '

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias ll='ls -lsah'

alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias g="git"

alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias sublime='open -a /Applications//Sublime\ Text.app "`pwd`"'