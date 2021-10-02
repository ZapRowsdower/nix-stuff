# nix-stuff
Learning unix/linux/posix stuff

[Gitpod for this repo](https://gitpod.io#github.com/ZapRowsdower/nix-stuff)

## Useful links
* [Nice automated Linux environment setup](https://github.com/victoriadrake/dotfiles)
* [LINUX BASICS IN 3 MINS : $PATH ENVIRONMENT VARIABLE](https://www.youtube.com/watch?v=abN6bvyPRxQ)
* [22 Essential Linux Commands (su, PATH, PIPING, cat, ps, bg, jobs..)](https://www.youtube.com/watch?v=XOvlsrCv3Bk)
* [UNIX: Basic UNIX commands you should know! Beginners guide. Part 1](https://www.youtube.com/watch?v=Cpxwo4atrEc)
* [LPI Linux Essentials](https://www.youtube.com/playlist?list=PLtGnc4I6s8dssa8hF4yMTAa4BrSJCSwux)
* [http://www.grymoire.com/Unix/index.html](http://www.grymoire.com/Unix/index.html)
* [TLDR Utility: A collection of simplified and community-driven man pages.](https://github.com/tldr-pages/tldr)
* [Bash Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html)
* [Redirection operators](https://unix.stackexchange.com/a/159514)

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
* `du` Disk usage: estimate and summarize file and directory space usage. [TLDR](https://tldr.ostera.io/du)
* `which` (locate a program/command in the user's path)
    * `which node` - prints /usr/bin/node
    
## Shells
On many *NIX OSes there is no GUI (for performance/size reasons) so your main interaction with the OS is via shells and scripts. *NIX systems have a variety of shells (for example: sh, zsh, ksh, and **bash**). See this [Wikipedia page for more details](https://en.wikipedia.org/wiki/Unix_shell). Bash appears to be the most ubiqutous shell to work with at this time as its available on Mac and PC (via Git Bash for Windows/Cygwin)

### Shell Modes
Shells have different modes: Interactive, Non-interactive, Login, Non-login.

**Interactive**: As the term implies: Interactive means that the commands are run with user-interaction from keyboard. E.g. the shell can prompt the user to enter input.

**Non-interactive**: the shell is probably run from an automated process so it can't assume if can request input or that someone will see the output. E.g Maybe it is best to write output to a log-file.

**Login**: Means that the shell is run as part of the login of the user to the system. Typically used to do any configuration that a user needs/wants to establish his work-environment.

**Non-login**: Any other shell run by the user after logging on, or which is run by any automated process which is not coupled to a logged in user.

**Login vs Non-login shells:**
* https://unix.stackexchange.com/questions/38175/difference-between-login-shell-and-non-login-shell
* http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
* "Not a login shell" means things like script launches and usually terminal windows started by window managers.
* "A login shell is one whose first character of argument zero is a -, or one started with the --login option."

To tell if you are in a login shell:
```bash
$ shopt login_shell # prints: login_shell     on or off
```

### Configuration
You can change the appearance and behavior of a given shell via a config file. Each shell has a different config file. See this table for more info: https://en.wikipedia.org/wiki/Unix_shell#Configuration_files.

Here are examples of heavily modified bash shells using `.bashrc` and `.bash_profile` files:
* http://tldp.org/LDP/abs/html/sample-bashrc.html

The terminal format is stored in the `PS1` environment variable. You can see your terminal's current settings by entering the following in a terminal prompt:

`$ echo $PS1`

This will output something like the following:

`\h:\W \u\$`

According to the PROMPTING section in the man page, this is the meaning of each special character:
* \u: the username of the current user.
* \h: the hostname up to the first dot (.) in the Fully-Qualified Domain Name.
* \W: the basename of the current working directory, with $HOME abbreviated with a tilde (~).
* \$: If the current user is root, display #, $ otherwise.

You can customize 3 aspects of the prompt:
* Text Format
   * 0: normal text
   * 1: bold
   * 4: underline
* Foreground text color. Codes range from 30-37 (8 bit simple colors)
   * 30: Black
   * 31: Red
   * 32: Green
   * 33: Yellow
   * 34: Blue
   * 35: Purple
   * 36: Cyan
   * 37: White
* Background color. Codes range from 40-47 (8 bit simple colors)
   * 40: Black
	* 41: Red
   * 42: Green
	* 43: Yellow
	* 44: Blue
	* 45: Purple
	* 46: Cyan
	* 47: White
   
The three values (background, format, and foreground) are separated by semicolons (if no value is given the default is assumed). Also, since the value ranges are different, it does not matter which one (background, format, or foreground) you specify first.

Use the `\e[` escape character at the beginning and an `m` at the end to indicate that what is between the two is a color sequence:

`PS1="\e[41;4;33m"` means set the background color to red, set the text format to underline, and set the foreground color to yellow. This will apply this styling to *any* terminal output. 

If you only want the style to apply to the terminal input line (where your username, etc. is) be sure to include a closing `[m` where you want the styling to stop.

`PS1="\e[41;4;33m\u@\h \w> \e[m"`

You can also use `tput` to customize your PS1 variable:

`PS1="\[$(tput bold)$(tput setab 4)$(tput setaf 2)\]\u@\h:\w $ \[$(tput sgr0)\]"`

Explanation:
* `\[` begin a sequence of non-printing characters, which could be used to embed a terminal control sequence into the prompt
* `\]` end a sequence of non-printing character

You can change the font formatting of a bash session by modifying the `PS1` environment variable, either for that session or permanently via the `.bashrc` or `.bash_profile` files.

Sweet guide on this here: 
https://www.thegeekstuff.com/2008/09/bash-shell-ps1-10-examples-to-make-your-linux-prompt-like-angelina-jolie

You can also change how the directories are formatted via the `LSCOLORS` environment variable. Useful tool to do that here:
https://geoff.greer.fm/lscolors/


### Environment Variables
Environment variables (such as PATH) can be defined in the `~/.bash_profile` and/or `~/.bashrc` files, depending on the OS in use (Linux, Unix, OSX).

Note that variables defined in `.bash_profile` are - by default - only accessible in login shells. To make these variables accessible to scripts run by other applications (e.g. VSCode tasks, Node.js scripts), you may have to pass the `-l` argument to your shell which puts the shell in login mode. 

See the [**Shell Modes**](#shell%20modes) section for more details.

Useful explanation of the difference between `.bash_profile` and `.bashrc`: http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html

To ensure that you're always setting environment variables for any bash scenario (login/non-login), do the following:

```bash
# Put PATH and other common settings in ~/.bashrc
# Add the following to your ~/.bash_profile:
# If the .bashrc file exists...
if [ -f ~/.bashrc ]; then
   # Expose it's contents here.
   # More info on 'source' here: https://superuser.com/a/46146
   source ~/.bashrc
fi
```

A more elegant, succinct approach done in recent versions (2.15) of Git for Windows when examining the `.bash_profile` which can load from a .profile and a .bashrc file:
```bash
# Inside the .bash_profile generated by Git for Windows    
# Check if a .profile file exists and (&&) if so, execute its source here - the '.' is an alias for 'source':
test -f ~/.profile && . ~/.profile
# Test if a .bashrc file exists and if so, execute its source here - the '.' is an alias for 'source'
test -f ~/.bashrc && . ~/.bashrc
```


### Bash Scripting
#### Helpful Links
* http://mywiki.wooledge.org/BashFAQ
* http://mywiki.wooledge.org/BashPitfalls

#### Concepts/Snippets
Change directory to current script location:
```bash
cd "$(dirname "$0")"
```

Create a function which accepts two parameters:
```bash
function helloworld() {
    # $1 and $2 are parameters which are passed in via the terminal invocation of this fn.
    # e.g. helloworld hello world -> prints hello world
    echo "$1 $2"
}
```
Then invoke the function and pass arguments like so:

`$ helloworld hello world`

## General Concepts
### User Accounts
By default, the root account is accessed by `sudo`. Use `sudo -i` to change your user type to the root admin. `su <user-name>` to switch back to non-root admin user type.

See a list of all the available users: `cat etc/passwd`

### File Permissons
Quick note: in Linux/Unix everything is a "file," including directories.

Each file has 3 user based permission groups:
- Owner: applies the creator of the file only
- Group: applies only to the group assigned to the file only
- All Other Users

The permissions are broken up into 3 columns: Owner, Group, All Other Users. 

To see permissions, run `ls -l`

Owner, Group, All
`-(rwx)(rwx)(rwx) owner group filesize date time filename`

The `-` at the beginning can specifies the type of file. Commnly this will be `d` when the item is a directory. Another example is `c` for character file.


**Example**
```
total 16
drwxr-xr-x 1 learner learner   45 Sep 22 17:23 ./
drwxr-xr-x 1 root    root      21 Sep 22 17:13 ../
-rw-r--r-- 1 learner learner  220 Feb 25  2020 .bash_logout
-rw-r--r-- 1 learner learner 3771 Feb 25  2020 .bashrc
-rw-r--r-- 1 learner learner  807 Feb 25  2020 .profile
-rw------- 1 learner learner  557 Sep 22 17:22 .viminfo
drwxr-xr-x 2 root    root       6 Sep 22 17:13 Desktop/
-rw-r--r-- 1 learner learner    0 Sep 22 17:23 permissions.txt
```

`d` stands for "directory"
`r` stands for "read" access `4` in octal/binary mode
`w` stands for "write" access `2` in octal/binary mode
`x` stands for "execute" access. `1` in octal/binary mode

To change permissions/access use `chmod`

Group = `g`
User = `u`
All = `a`

**Symbolic mode**

Allow current user to read, write, execute a shell script file
`chmod u=rwx script.sh`

Allow group and all users to read, write, execute a script file
`chmod ga=rwx script.sh`

Remove write, exeecute permissions for all users
`chmod ga-wx tesh.sh`

**Octal/Binary Mode**

Set read permissions for owner, group, and all others

`chmod 444 test.sh`

Set read, write, execute for owner only. Group and all others have read only access:
- read = 4
- write = 2
- execute = 1

4+2+1 = 7 (read + write + execute)

`chmod 744`

Grant read, write, execute recursively (to all contents) for all users:

`chmod -R 777 ./SomeDir`

### File Ownership, Group

`chown` changes file ownership.

To change the ownership of a file to the root user:

`chown root test.sh`

To see a list of the current user's groups:

`groups`

To see which groups a given user is in:

`groups username` 

To change the group of a file to the root user:

`chgrp root test.sh`
