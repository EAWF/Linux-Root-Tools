# EAWF CentOS7 Initialization Script
# Run this on a new CentOS 7 Minimal Install
#!/bin/bash
yum -y upgrade
yum-config-manager --enable rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional
yum -y install epel-release yum-utils
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum -y install centos-release-scl.noarch
yum -y upgrade
