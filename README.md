# nix-stuff
Learning unix/linux/posix stuff

## Useful links
* [LINUX BASICS IN 3 MINS : $PATH ENVIRONMENT VARIABLE](https://www.youtube.com/watch?v=abN6bvyPRxQ)
* [22 Essential Linux Commands (su, PATH, PIPING, cat, ps, bg, jobs..)](https://www.youtube.com/watch?v=XOvlsrCv3Bk)
* [UNIX: Basic UNIX commands you should know! Beginners guide. Part 1](https://www.youtube.com/watch?v=Cpxwo4atrEc)
* [LPI Linux Essentials](https://www.youtube.com/playlist?list=PLtGnc4I6s8dssa8hF4yMTAa4BrSJCSwux)
* [http://www.grymoire.com/Unix/index.html](http://www.grymoire.com/Unix/index.html)
* [TLDR Utility: A collection of simplified and community-driven man pages.](https://github.com/tldr-pages/tldr)

## Basic Commands
* `ls` (list content of current directory) [TLDR](https://tldr.ostera.io/ls)
    * `ls -lahF` (list hidden files and directories)
    * `-h` (makes the file size human readable e.g. 4096 -> 4.0k)
* `pwd` (print working directory)
* `cd` (used for navigation)
* `cd ..` (back to previous direcrtory)
* `cd /`  (back to root directory)
* `cd ~` (back to user home directory)
* `cd -` (return to the previously visited directory)
* `cp` src dest (copy files) [TLDR](https://tldr.ostera.io/cp)
    * `cp -r` (copy files and directories recursively)
    * `cp -a` (copy files/directories recursively and preserve mode, ownership, and time stamp info while recursively copying)
* `mv` (Move or rename files and directories. Moving and renaming is one operation as renaming is just moving a single file to the same place under a different name.) [TLDR](https://tldr.ostera.io/mv)
* `rm` (remove file) [TLDR](https://tldr.ostera.io/rm)
* `mkdir` (make new directory)
    * `mkdir path/to/thing -p` (creates entire specified structure if it doesn't exist already) 
* `rmdir` (remove directory)
* `rm-r` folder name (to delete non empty folder)
* `less` (view text chunked into screenfuls)
* `fold` Fold or break long lines at 60 characters
    * `fold -s longtext.txt | grep M87`
* `find` (Search filesystem for files and directories) [TLDR](https://tldr.ostera.io/find) & [MORE](http://www.grymoire.com/Unix/Find.html)
    * `find . -print` (Print the names of all of the files in the directory and all subdirectories)
* `cat` (If given a single file, prints its contents to the standard output. If you give it more than one file, it will concatenate them, and you can then redirect the output into a new file.) [TLDR](https://tldr.ostera.io/cat), [EXAMPLE SCRIPT](./scripts/cat-example.sh)


## Utilities
* `curl` (Transfers data from or to a server via a URL) [TLDR](https://tldr.ostera.io/curl), [EXAMPLE SCRIPT](./scripts/search-web-page.sh)
   * `curl -O [url/to/some/file.ext]` (download file maintaining the exact file name)
   * `curl -u user:pass -O ftp://remote_url/file-to-download.zip` (pass authentication details)
* `wc` (print newline, word, and byte counts for each file)
* `diff` (compare files line by line.  It only shows altered lines, abbreviating changed as c, deleted as d and added as a.) [TLDR](https://tldr.ostera.io/diff) & [MORE](https://www.computerhope.com/unix/udiff.htm)
* `grep` (searches text matching a specified pattern. By default it looks at standard input, but you can specify files to be searched. A pattern can be a normal string or a regular expression. It can print out matching or non-matching lines, and their context. Every time you run a command which spews a lot of information you don’t need, pipe it into grep and let it do its magic) [TLDR](https://tldr.ostera.io/grep)
    * `grep --color -Hn <pattern>` (Highlight found patterns and display line numbers)
* `head` / `tail` (head: output the first part of files. tail: output the last part of files)
* `whereis` (locate the binary, source, and manual page files for a command)
    * `whereis node`
* `locate` (find files by name)
    * `locate -b '\README.md'` (Search for a file named exactly 'README.md')
* `whatis` (display one-line manual page descriptions. Quick summaries of commands and programs)
* `sed` (Edit text in a scriptable manner) [TLDR](https://tldr.ostera.io/sed) & [MORE](https://www.lifewire.com/example-uses-of-sed-2201058)
    * `sed 's/<regex>/<replace>/' {{filename}}` Replace the first occurrence of a regular expression in each line of a file, and print the result
    * `sed -r 's/<regex>/<replace>/g' {{filename}}` Replace **all** occurrences of an extended regular expression in a file, and print the result
    * `sed -i 's/<find>/<replace>/g' {{filename}}` Replace all occurrences of a string in a file, overwriting the file (i.e. in-place)
    * `sed -i 's/nix-stuff/more-nix-stuff/' package.json` (Change "nix-stuff" to "more-nix-stuff" in package.json, overwriting the existing package.json in place)
* `gzip <file>` Compress file [TLDR](https://tldr.ostera.io/gzip)
* `gunzip <file>` Open zip file
* `awk` A programming language for working on files. [TLDR](https://tldr.ostera.io/awk) & [Github](https://github.com/onetrueawk/awk)

## Administrative Commands
* `ps aux` (List a table of running processes)
    * `ps aux | grep node` (list processes and search for a process called 'node')
* `kill <opt> <ID>` - Kill a given process by ID
    * `kill -9 8453` - Kill process with ID 8453
    * `kill node` - Kill processes named 'node'
* `chmod <opt> <file>` (change file permissions)
    * `chmod 644 *.html` (make all .html files read only)
    * `chmod 755 file.exe` (change permissions to executable)
* `chown` (Change file ownership. Only the root user may change the owner of a file)
* `passwd` (change password)
* `top` - Print system usage and top resource hogs
* `tar` - Use tar archiving utility
* `file` - Gives information about a given file type/folder
* `ln` - Creates symbolic links between files. These are like Windows shortcuts in that they provide a convenient way of accessing a particular file. Soft links are aliases to file names while hard links are aliases to files (complete with file metadata)
* `top` or `htop` (System Montior/Task Manager.)
    * `htop` is usually a separate download but is much better than top (available in Windows Subsystem Linux but not Mac)
* `df` (report file system disk space usage)
* `which` (locate a program/command in the user's path)
    * `which node` - prints /usr/bin/node

## General Concepts
### User Accounts
By default, the root account is accessed by `sudo`. Use `sudo -i` to change your user type to the root admin. `su <user-name>` to switch back to non-root admin user type.
