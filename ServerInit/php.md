# Installing Latest Version of PHP on CentOS 7
```bash
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
# yum-config-manager --enable remi-php72   [Install PHP 7.2]
# yum-config-manager --enable remi-php73   [Install PHP 7.3]
yum-config-manager --enable remi-php74
yum -y install php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo php-gmp php-base58
php -v

```
