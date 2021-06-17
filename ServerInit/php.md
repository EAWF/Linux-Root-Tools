# Installing Latest Version of PHP on CentOS 7
```bash
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
yum -y install http://rpms.remirepo.net/enterprise/remi-release-8.rpm
yum-config-manager --enable remi-php80
yum -y install php php-common php-pecl-mcrypt php-cli php-gd php-curl php-mysqlnd php-ldap php-zip php-fileinfo php-gmp php-base58 php-ev
dnf -y upgrade
php -v
php -m
```
