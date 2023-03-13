# My .bashrc Mod's
This collection of .bashrc modifications make my life in the command line a little easier.

## Tired of the "are you sure" warnings?
* Two ways to use this:
  - Permanently:
    - Comment out the alias lines for mv cp rm
  - From the command line for the current session only:
```bash
  unalias mv cp rm
```
## Stuff to neaten and make the ls command easier to use and view.
* The "--group-directories-first" options is more DOS-like.
* The "--color=auto" is standard for bash, but you need to include it in the aliase or else you lose it.
* Modify ls:
```bash
  alias ls='ls --group-directories-first --color=auto'
```
* Long listing. I like this much better because it offers better info.
```bash
  alias ll='ls -l --group-directories-first --color=auto'
```
* Hidden files ONLY
```bash
  alias l.='ls -dl .* --group-directories-first --color=auto'
```
* See EVERYTHING.
```bash
  alias la='ls -la --group-directories-first --color=auto'
```
## Firewall
* I'm using csf nowadays, so I don't really use iptables by itself any more, but sometimes it's nice to have:
```bash
  alias chkfirewall='iptables -nvL --line-numbers | less'
```
* Csf reports this to roots mail, so I don't really need to keep tabs on this any more.
```bash
  alias chksecure='tail -n50 -f /var/log/secure'
```

## Message Log
* This is handy to look at what hackers are poking at in trying to attack your system
```bash
  alias chkmessages='tail -n50 -f /var/log/messages'
```
* Using this tool, I discovered that there are lots of 404 errors to wp-login.php, so I set up a wp-login.php page to re-direct them to the FBI Cyber Crimes Page!

## I am ALWAYS forgetting to add the "-s"
```bash
  alias curl='curl -s'
```

## I am ALWAYS forgetting to add the "-y" and supressing common lines is much more informative.
```bash
  alias diff='diff -y --suppress-common-lines'
```

## Roots Mail:
* For me, mail for root is always kept on localhost. It receives mail from lfd, rkhunter, cron, and others. Root NEVER receives mail outside being signed on locally. The default mailer for root is sendmail or it's replaced by whatever MTA you have installed, BUT, AFAIK, the command is always: mail. This default is good, BUT, I like mutt better.
```bash
  alias mail='mutt'
```

## I LIKE nano better than vim.
```bash
  export EDITOR=nano
```

## For when I am lazy.
```bash
 mcd() {
  mkdir $@ && cd $@
 }
```
