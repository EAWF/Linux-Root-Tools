# CentOS7 Minimal Server Initialization Scripts

This sub-repository contains scripts designed for load specific server features that you may want to use on your CentOS 7 Minimal Server Installation.
# INITIALIZATION SCRIPTS
* **[init](/ServerInit/init)**: Initial Installation and upgrades.
* **[firewall](/ServerInit/firewall)**: Setting up the CSF firewall manager.
* **[admin](/ServerInit/admin)**: Handy System Administrator Tools designed to make documentation and everyday tasks easier.
# DATABASES
**_NOTE: Set your databases up **BEFORE** running the webserver script so that the modules will correctly load into your server._**
* **MariaDB**: Open source replacement for MySQL, but works the same.
* **PostgreSQL**: Rock solid, full featured DB Server, with less attack vectors
* **SQLite3**: Fully usable SQL without the overhead of a constantly running server daemon...SQL on demand.
# MAIL SERVERS & FEATURES
## MTA's
* **Sendmail**: The tried and true default eMail system 
* **Postfix**: The replacement for Sendmail. Easier to manage
## WEBMAIL
* **Roundcube**: Professional looking basic web eMail. Don't look for fancy features here...just the basics.
# WEBSERVER
* **webserver**: Basic packages to set up Apache2
