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

if [ -f ~/.bash_git ]; then
  . ~/.bash_git
fi

if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

if [ -f ~/.alias ]; then
  . ~/.alias
fi


