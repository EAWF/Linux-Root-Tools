A collection of Administration Tools for CentOS 7 servers.

Store scripts in /root/bin/ directory and set permissions to 0700.

* [edit]() attempts to open the file, creates it if it doesn't exist. If file exists, creates a temporary backup. If edit different than backup, creates a backup with a timestamp in the extension.
* [glean]() displays uncommented contents of a file to STDOUT. Output may easily be piped.
* [motd]() edits /etc/motd using the edit method listed above.
* [log]() creates and appends the command parameters to ~/.log.
* [servstatus]() displays the current system status to STDOUT. Output may easily be piped.
