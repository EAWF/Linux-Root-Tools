# My-Bash Setup
The files are read in the following order when you open a new bash shell session:

**/etc/profile**: This is a system-wide initialization file that is read first. It sets environment variables and runs commands that are required for all users.

**/etc/bashrc**: This is a system-wide initialization file that is read next. It sets up the bash environment for all users and runs commands that are required for all users.

**~/.bash_profile**: This is a user-specific initialization file that is read next. It is typically used to set up the user's environment variables and run commands that are specific to the user. If this file does not exist, then ~/.bash_login is read instead.

**~/.bashrc**: This is a user-specific initialization file that is read next. It is typically used to set up aliases, functions, and other settings that are specific to the user's bash shell.

**~/.bash_aliases**: This is a user-specific file that is read next. It is used to define aliases for commands.

**~/.bash_logout**: This is a user-specific file that is read when the user logs out of the bash shell. It is typically used to clean up the environment or run commands that are required when the user logs out.

So,the order in which the files are read into the bash environment is:

**~/.bashrc** (first)
**~/.bash_aliases** (second)
**.bash_profile** (third)

**.bash_logout** (on exit)
