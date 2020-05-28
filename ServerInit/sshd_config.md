# SSHD Configuration:
* Make the following changes to /etc/ssh/sshd_config
  - ListenAddress [ser.ver.add.res]
  - PubkeyAuthentication yes
  - Banner /etc/warning (You will need to create this file)
* Save the file and then run:
  - systemctl restart sshd
  - systemctl status sshd
