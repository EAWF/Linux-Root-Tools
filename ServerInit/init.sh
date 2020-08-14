#!/bin/bash
# EAWF CentOS7 Initialization Script
# Run this on a new CentOS 7 Minimal Install
yum-config-manager --enable rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional
yum -y install epel-release yum-utils
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
// rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm For PHP 7.1. See PHP installation section
yum -y install centos-release-scl.noarch
yum -y upgrade
