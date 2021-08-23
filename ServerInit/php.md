# Installing PHP 7 on CentOS 7
```bash
yum-config-manager --enable remi-php74
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm && yum clean all
yum -y install php php74-php-{base58,bcmath,common,cli,curl,devel,fpm,gd,gmp,mbstring,mysqlnd,opcache,pear,json,mcrypt,pdo,xml,zip}
```
# Changing system to run php74 instead of php54
- This is needed to run php7.4 on your system as default.
```bash
cd /usr/bin
cp php php54
rm php
ln -s php74 php
```
- To change back, just do the reverse.
 
# Installing PHP 8 on CentOS 7
- Don't use the below yet until it's out of beta.
```bash
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
yum -y install http://rpms.remirepo.net/enterprise/remi-release-8.rpm && yum clean all
yum-config-manager --enable remi-php80
yum -y install php php-common php-pecl-mcrypt php-cli php-gd php-curl php-mysqlnd php-ldap php-zip php-fileinfo php-gmp php-base58 php-ev
dnf -y upgrade
php -v
php -m
```
