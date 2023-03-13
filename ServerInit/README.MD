# Minimal Server Initialization Scripts

This sub-repository contains scripts designed for load specific server features that you may want to use on your CentOS 7 Minimal Server Installation.
# INITIALIZATION SCRIPTS
## Run First!
* **[init](/ServerInit/init.md)**: Initial Installation and upgrades.
* **[admin](/ServerInit/admin.md)**: Handy System Administrator Tools designed to make documentation and everyday tasks easier.
## For ConfigServer Firewall
* **[firewall](/ServerInit/CSF_Firewall.md)**
# DATABASES
**_NOTE: Set your databases up **BEFORE** running the webserver script so that the modules will correctly load into your server._**
* **SQLite3**: Fully usable SQL without the overhead of a constantly running server daemon...SQL on demand.
* **MariaDB**: Open source replacement for MySQL, but works the same.
* **PostgreSQL**: Rock solid, full featured DB Server, with less attack vectors
# MAIL SERVER & FEATURES
## MTA's
* **Postfix**: The replacement for Sendmail. Easier to manage
## WEBMAIL
* **RainLoop**: Good Remote Mail Server, easy to install, just remember to change the admin password IMMEDIATELY!
# WEBSERVER
* **webserver**: Basic packages to set up Apache2
