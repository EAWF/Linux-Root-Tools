# CentOS 7.x Mail Server Suite Installation Script and Configuration
## Base Installation
* Assumes you are root. If you need sudo access, type ```sudo -``` and enter the root password to become root.
```bash
yum -y install postfix dovecot spamassassin
yum -y install clamav-server clamav-data clamav-update clamav-filesystem clamav clamav-scanner-systemd clamav-devel clamav-lib clamav-server-systemd
```
## Base Configuration
### Postfix
```bash
```
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
