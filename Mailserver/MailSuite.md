# CentOS 7.x Mail Server Suite Installation Script and Configuration
## Notes
* Procedure assumes you are root. If you need sudo access, type ```sudo -``` and enter the root password to become root.
* The ***Edit*** program requires that you have installed the [Edit](https://github.com/EAWF/Linux-Root-Tools/blob/master/Administrator%20Tools/edit) script found in this repository.
  - If you don't want to do this, then just use your favorite editor.
```bash
yum -y install postfix dovecot spamassassin
yum -y install clamav-server clamav-data clamav-update clamav-filesystem clamav clamav-scanner-systemd clamav-devel clamav-lib clamav-server-systemd
```
### Postfix
* Installation
```bash
yum -y remove sendmail*
yum -y install postfix
```
* Configuration
```bash
edit /etc/postfix/main.cf
```
  - Modify the following lines to conform to your servers configuration
    - myhostname = [your MAIL SERVER's hostname] - See your DNS settings
    - mydomain = [your domain name]
    - myorigin = $mydomain
    - inet_interfaces = all
    - inet_protocols = all
    - mydestination = $myhostname, localhost.$mydomain, localhost,
    - mynetworks = [Your server's IP address/8], 127.0.0.0/8
    - home_mailbox = Maildir/
  - Restart Postfix
  ```bash
  systemctl enable postfix
  systemctl restart postfix
  systemctl status postfix
  ```
  - Test
    - Use mutt to send a message to yourself(i.e. root@localhost) and see if you get it.
### Dovecot
* Edit **/etc/dovecot/dovecot.conf** and verify lines below are set correctly
```text
protocols = imap pop3 lmtp
listen = *, ::
```
* Edit **/etc/dovecot/conf.d/10-mail.conf**
```text
mail_location = maildir:~/Maildir
```
* Edit **/etc/dovecot/conf.d/10-master.conf** 
```text
unix_listener /var/spool/postfix/private/auth {
 mode = 0666
 user = postfix
 group = postfix
}
```
* Edit **/etc/dovecot/conf.d/10-ssl.conf**
```text
ssl = yes
ssl_cert = [location of your cert]
```
* Start Dovecot
```bash
systemctl enable dovecot
systemctl start dovecot
```
### ClamAV
* Edit configuration files and start ClamAV system
```bash
sed -i -e "s/^Example/#Example/" /etc/clamd.d/scan.conf
sed -i -e "s/#LocalSocket/LocalSocket/" /etc/clam.d/scan.conf
sed -i -e "s/^Example/#Example/" /etc/freshclam.conf
freshclam
systemctl enable clamd@scan
systemctl start clamd@scan
```
## Base Tests
### Postfix
### Dovecot
### ClamAV
### Spamassassin

## Roundcube Installation, Configuration & Testing

## Mailman Installation, Configuration & Testing
