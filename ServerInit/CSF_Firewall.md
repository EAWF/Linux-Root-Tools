# ConfigServer Firewall Management System
## Install
```bash
cd /usr/src
rm -fv csf.tgz
wget https://download.configserver.com/csf.tgz
tar -xzf csf.tgz
cd csf
sh install.sh
yum -y install perl-libwww-perl.noarch perl-LWP-Protocol-https.noarch
cd /etc/csf
cp csf.conf csf.conf.orig
echo Edit csf.conf now
echo
```
## Configure
* After installing CSF make the following changes to /etc/csf/csf.conf:
  - TESTING = "0"
  - RESTRICT_SYSLOG = "3"
  - CC_DENY = "RU,CN,BR,KR,JP,VN" (or use whatever countries are trying to attack your system.
  - CC_LOOKUPS = "3"
* Save the file and then run:
  - csf -r && csf -ra
* You may need to set crontab to update on a regular basis:
  - csf -u && csf -r && csf -ra

## Upgrade
```bash
csf -u
```
# Install Changes
```bash
csf -r && csf -ra
```
