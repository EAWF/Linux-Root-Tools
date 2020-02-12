# ConfigServer Firewall Management System
## Install
```bash
cd /usr/src
rm -fv csf.tgz
wget https://download.configserver.com/csf.tgz
tar -xzf csf.tgz
cd csf
sh install.sh
```
## Upgrade
```bash
csf -u
```
# Install Changes
```bash
csf -r && csf -ra
```
