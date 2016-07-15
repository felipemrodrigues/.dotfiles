export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export VIRTUALENV_USE_DISTRIBUTE=1

export EDITOR='subl -w'export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH

export TOMCAT_HOME=/Users/feliperodrigues/Documents/Apps/apache-tomcat-7.0.57
export WORKSPACE_HOME=/Users/feliperodrigues/Documents/workspace

# export PATH=/usr/local/bin:$PATH

export ANT_HOME=/Users/feliperodrigues/Documents/Apps/apache-ant-1.9.4
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig:/usr/local/bin/pkg-config

export PATH=$PATH:/usr/local/mysql/bin

HISTTIMEFORMAT="%d/%m/%y %T "


source ~/.dotfiles/runcom/.bash_git

. ~/.dotfiles/runcom/.bash_prompt

source ~/.dotfiles/runcom/.bash_git
source ~/.dotfiles/runcom/.bash_prompt


# Folders shortcuts
alias cweb='cd ~/Documents/Projects/oi-web'
alias capi='cd ~/Documents/Projects/oi-api'
alias cbpass='cd ~/Documents/Projects/bpass'
alias etc='subl /etc/hosts'

# Git Aliases
alias gs='git status'
alias gpu='git pull'
alias gps='git push'
alias ga='git add .'
alias gc='git commit'
alias gac='git add . && git commit'
alias gb='git branch'
alias gch='git checkout'
alias gcb='git checkout -b'
alias gl='git log'
alias removecommit='git reset --hard'
alias gr='git rebase'
alias gpsor='git push origin:'


