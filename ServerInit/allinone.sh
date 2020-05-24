#! /bin/bash
# Installation/Configuration Script for NEW CentOS 7 Minimal VPS.
yum -y upgrade
yum-config-manager --enable rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional
yum -y install epel-release yum-utils
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum -y install centos-release-scl.noarch
yum -y install bind-utils cronie gcc ipset iptables-services lynx make e2fsprogs gd
yum -y install man mlocate nano net-tools rsyslog sudo which whois ImageMagick vim
yum -y install perl perl-GDGraph perl-libwww-perl.noarch perl-LWP-Protocol-https.noarch
yum -y install mutt swaks rkhunter curl wget file expect
yum-config-manager --enable remi-php74
yum -y install php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo php-gmp php-base58
cd /usr/src
wget https://download.configserver.com/csf.tgz
tar -xzf csf.tgz
cd csf
sh install.sh
cd ~
yum -y upgrade
echo "Initialization Complete."
