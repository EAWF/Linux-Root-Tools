System Initialization Script
```bash
#!/bin/bash
# EAWF CentOS7 Initialization Script
# Run this on a new CentOS 7 Minimal Install
* change all below for DNF and whatever version of Linux you have selected.
yum-config-manager --enable rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional
yum -y install epel-release yum-utils
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install centos-release-scl.noarch
yum -y upgrade
```
