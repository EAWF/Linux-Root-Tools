# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
 . /etc/bashrc
fi
if [ -f ~/.bash_aliases ]; then
 . ~/.bash_aliases
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export HISTFILESIZE=4000
export HISTSIZE=4000
export HISTTIMEFORMAT="%Y%m%d%T "
LS_COLORS='rs=0:di=01;34:ln=01;35:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;$
export LS_COLORS
