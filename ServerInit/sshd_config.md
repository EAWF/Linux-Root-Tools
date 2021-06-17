# SSHD Configuration:
* Make the following changes to /etc/ssh/sshd_config
  - Port 2222 
  - PubkeyAuthentication yes
  - PasswordAuthentication no
  - ChallengeResponseAuthentication no
  - UsePAM no
  - PermitRootLogin no 
  - Banner /etc/warning (You will need to create this file)
* Save the file and then run:
```bash
 systemctl restart sshd
 systemctl status sshd
```
