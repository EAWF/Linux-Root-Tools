# User Aliases to avoid system auto modification
# Source global definitions
# if [ -f ~/.bash_aliases ]; then
# . ~/bash_aliases
# fi

# User specific aliases and functions
alias l.='ls -dl .* --group-directories-first --color=auto'
alias ll='ls -l --group-directories-first --color=auto'
alias ls='ls --group-directories-first --color=auto'
alias la='ls -la --group-directories-first --color=auto'

alias chkfirewall='iptables -nvL --line-numbers | less'
alias chksecure='tail -n50 -f /var/log/secure'
alias chkmessages='tail -n50 -f /var/log/messages'

alias cls='clear'
alias curl='curl -s'
alias customers='nano ~/.customers'
alias mdate='date +'\''%Y%m%d %H:%M:%S %Z'\'''
alias diffy='diff -y'
alias mail='mutt'
alias nano='nano -c'
alias motd='nano /etc/motd'
alias sqlite='sqlite3'
# alias htmlerr='tail -f -n20 /var/log/httpd/error_log'
alias timestamp='date +%s'
alias ttd='nano ~/.ttd'

export EDITOR='nano -c'
