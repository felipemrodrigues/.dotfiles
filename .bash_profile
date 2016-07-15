export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'export PATH=/usr/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin

if [ -f ~/.bash_git ]; then
  . ~/.bash_git
fi

if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

if [ -f ~/.alias ]; then
  . ~/.alias
fi


