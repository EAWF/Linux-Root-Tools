# Bash Environment Setup
## **TLDR;**
The files are read in the following order when you open a new bash shell session:
1. **[.bash_profile]()**
2. **[.bashrc]()**
3. **[.bash_aliases]()**
4. **[.bash_logout]()**

## Documentation: 
### **/etc/profile**:
* This is a system-wide initialization file that is read first. It sets environment variables and runs commands that are required for all users.
### **/etc/bashrc**:
* This is a system-wide initialization file that is read next. It sets up the bash environment for all users and runs commands that are required for all users.
### **[~/.bash_profile](https://github.com/EAWF/Linux-Root-Tools/blob/master/Bash/.bash_profile)**:
* This is a user-specific initialization file that is read next. It is typically used to set up the user's environment variables and run commands that are specific to the user. If this file does not exist, then ~/.bash_login is read instead.
### **[~/.bashrc](https://github.com/EAWF/Linux-Root-Tools/blob/master/Bash/.bashrc)**:
* This is a user-specific initialization file that is read next. It is typically used to set up or override aliases, functions, and other settings that are specific to the user's bash shell.
### **[~/.bash_aliases](https://github.com/EAWF/Linux-Root-Tools/blob/master/Bash/.bash_aliases)**:
* This is a user-specific file that is read next. It is used to define or override aliases for commands.
### **[~/.bash_logout](https://github.com/EAWF/Linux-Root-Tools/blob/master/Bash/.bash_logout)**:
* This is a user-specific file that is read when the user logs out of the bash shell. It is typically used to clean up the environment or run commands that are required when the user logs out.
  * A user-specific bash_logout file should be placed in the user's home directory.
  * **NOTE**: ***If the system-wide bash_logout file located at /etc/bash_logout exists, it will be executed after the user-specific bash_logout file.***
