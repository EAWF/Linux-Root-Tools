#! /bin/bash
# Installation/Configuration Script for NEW CentOS 7 Minimal VPS.
yum -y upgrade
yum-config-manager --enable rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional
yum -y install epel-release yum-utils
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum -y install centos-release-scl.noarch
yum -y install bind-utils cronie gcc ipset iptables-services lynx make e2fsprogs gd
yum -y install man mlocate nano net-tools rsyslog sudo which whois ImageMagick vim
yum -y install perl perl-GDGraph perl-libwww-perl.noarch perl-LWP-Protocol-https.noarch
yum -y install mutt swaks rkhunter curl wget file expect

