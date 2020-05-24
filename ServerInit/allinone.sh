#! /bin/bash
# Installation/Configuration Script for NEW CentOS 7 Minimal VPS.
yum -y upgrade
yum-config-manager --enable rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional
yum -y install epel-release yum-utils
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum -y install centos-release-scl.noarch
yum -y upgrade

