# CSF Options
* After installing CSF make the following changes to /etc/csf/csf.conf:
  - TESTING = "0"
  - RESTRICT_SYSLOG = "3"
  - CC_DENY = "RU,CN,BR,FR,JP,VN" (or use whatever countries are trying to attack your system.
  - CC_LOOKUPS = "3"
* Save the file and then run:
  - csf -r && csf -ra
* You may need to set crontab to update on a regular basis:
  - csf -u && csf -r && csf -ra
  
