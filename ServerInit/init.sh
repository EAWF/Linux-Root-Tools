# This script does not support PHP 8+, which requires using dnf to update.  Will update this code sometime soon.  RH

#!/bin/bash
# EAWF CentOS7 Initialization Script
# Run this on a new CentOS 7 Minimal Install
yum-config-manager --enable rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional
yum -y install epel-release yum-utils
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install centos-release-scl.noarch
yum -y upgrade
