# Installing PHP 7 on CentOS 7
```bash
yum-config-manager --enable remi-php74
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm && yum clean all
yum -y install php php74-php-{base58,bcmath,common,cli,curl,devel,fpm,gd,gmp,mbstring,mysqlnd,opcache,pear,json,mcrypt,pdo,xml,zip}
```

# Installing PHP 8 on CentOS 7
```bash
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
yum -y install http://rpms.remirepo.net/enterprise/remi-release-8.rpm && yum clean all
yum-config-manager --enable remi-php80
yum -y install php php-common php-pecl-mcrypt php-cli php-gd php-curl php-mysqlnd php-ldap php-zip php-fileinfo php-gmp php-base58 php-ev
dnf -y upgrade
php -v
php -m
```
