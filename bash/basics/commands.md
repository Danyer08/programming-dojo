# Basic Bash Commands

## List files and directories

```bash
ls # List all files in the current directory
ls -a # List all files in the current directory, including hidden files
ls -l # List all files in the current directory, along with their permissions and other information
ls -la # List all files in the current directory, including hidden files, along with their permissions and other information
ls -lh # List all files in the current directory, along with their permissions and other information, in a human-readable format
ls -lha # List all files in the current directory, including hidden files, along with their permissions and other information, in a human-readable format
ls -lS # List all files in the current directory, sorted by size
ls -lt # List all files in the current directory, sorted by time modified
ls -ltr # List all files in the current directory, sorted by time modified in reverse order
ls [pattern]* # List all files in the current directory that match a specific pattern
ls -R # List all files and directories in the current directory and all subdirectories
ls -Rl # List all files and directories in the current directory and all subdirectories, along with their permissions and other information
ls -Rlh # List all files and directories in the current directory and all subdirectories, along with their permissions and other information, in a human-readable format
ls -RlS # List all files and directories in the current directory and all subdirectories, sorted by size
ls -Rlt # List all files and directories in the current directory and all subdirectories, sorted by time modified
ls -Rltr # List all files and directories in the current directory and all subdirectories, sorted by time modified in reverse order
ls -R [pattern]* # List all files and directories in the current directory and all subdirectories that match a specific pattern
tree # List all files and directories in the current directory in a tree-like format
tree -L 2 # List all files and directories in the current directory up to a specified depth
```

## Navigation

```bash
cd # Change directory
cd .. # Go up one directory
cd # Go to the home directory
cd - # Go to the previous directory
pwd # Print the current working directory
```

## File Manipulation

```bash
touch file.txt # Create a new file
mkdir directory # Create a new directory
cp file.txt file_copy.txt # Copy a file
cp -r directory directory_copy # Copy a directory
mv file.txt new_file.txt # Move or rename a file
mv directory new_directory # Move or rename a directory
rm file.txt # Remove a file
rm -r directory # Remove a directory
rm -f file.txt # Force remove a file
rm -rf directory # Force remove a directory
rm -i file.txt # Prompt before removing a file
rm -ir directory # Prompt before removing a directory
```

## File Viewing

```bash
cat file.txt # Display the contents of a file
less file.txt # View the contents of a file one page at a time
head file.txt # Display the first few lines of a file
head -n 15 file.txt # Display the first 15 lines of a file, or the given number
tail file.txt # Display the last few lines of a file
tail -n 15 file.txt # Display the last 15 lines of a file, or the given number
more file.txt # View the contents of a file one page at a time
xdg-open file.txt # Open a file with the default application
file file.txt # Determine the file type
```

## Wildcards

```bash
* # Match zero or more characters
? # Match a single character
[abc] # Match any one of the characters a, b, or c
[!abc] # Match any character except a, b, or c
[a-z] # Match any character in the range a to z
[!a-z] # Match any character not in the range a to z
[[:digit:]] # Match any digit
[[:alpha:]] # Match any alphabetic character
[[:alnum:]] # Match any alphanumeric character
[[:lower:]] # Match any lowercase character
[[:upper:]] # Match any uppercase character
[[:space:]] # Match any whitespace character
[[:punct:]] # Match any punctuation character
[[:print:]] # Match any printable character
[[:graph:]] # Match any printable character except space
[[:xdigit:]] # Match any hexadecimal digit
[[:word:]] # Match any word character
[[:ascii:]] # Match any ASCII character
```

## File Permissions

```bash
chmod +x script.sh # Add execute permission to a file
chmod -x script.sh # Remove execute permission from a file
chmod u+x script.sh # Add execute permission for the owner of a file
chmod g+x script.sh # Add execute permission for the group of a file
chmod o+x script.sh # Add execute permission for others
chmod 755 script.sh # Set the permissions of a file to 755
```

## Searching

```bash
grep pattern file.txt # Search for a pattern in a file
grep -r pattern directory # Search for a pattern in all files in a directory
grep -i pattern file.txt # Search for a pattern in a file, ignoring case
grep -n pattern file.txt # Search for a pattern in a file, displaying line numbers
```

## Process Management

```bash
ps # Display information about running processes
ps aux # Display detailed information about running processes
kill PID # Terminate a process by its process ID
killall process_name # Terminate all processes with a specific name
```

## System Information

```bash
uname # Display system information
uname -a # Display detailed system information
uptime # Display system uptime and load averages
df # Display disk space usage
df -h # Display disk space usage in a human-readable format
free # Display memory usage
free -h # Display memory usage in a human-readable format
```

## Network

```bash
ping host # Send ICMP ECHO_REQUEST packets to a host
traceroute host # Print the route packets take to a network host
whois domain # Retrieve WHOIS information for a domain
```

## Commands Help

```bash
type command # Display information about a command
help command # Display help informatio
command --help # Display help information
man command # Display the manual page for a command
info command # Display the info page for a command
whatis command # Display a one-line description of a command
```

## File Compression

```bash
tar -cvf archive.tar file1 file2 # Create a tar archive
tar -xvf archive.tar # Extract a tar archive
tar -zcvf archive.tar.gz file1 file2 # Create a gzip-compressed tar archive
tar -zxvf archive.tar.gz # Extract a gzip-compressed tar archive
tar -jcvf archive.tar.bz2 file1 file2 # Create a bzip2-compressed tar archive
tar -jxvf archive.tar.bz2 # Extract a bzip2-compressed tar archive
zip archive.zip file1 file2 # Create a zip archive
unzip archive.zip # Extract a zip archive
```

## File Transfer

```bash
scp file.txt user@host:/remote/directory # Securely copy a file to a remote host
scp user@host:/remote/file.txt /local/directory # Securely copy a file from a remote host
rsync -avz file.txt user@host:/remote/directory # Synchronize a file to a remote host
rsync -avz user@host:/remote/file.txt /local/directory # Synchronize a file from a remote host
```

## Text Processing

```bash
echo "Hello, World!" # Display a message
echo "Hello, World!" > file.txt # Write a message to a file
echo "Hello, World!" >> file.txt # Append a message to a file
wc file.txt # Count the number of lines, words, and characters in a file
wc -l file.txt # Count the number of lines in a file
wc -w file.txt # Count the number of words in a file
wc -c file.txt # Count the number of characters in a file
sort file.txt # Sort the lines of a file
sort -r file.txt # Sort the lines of a file in reverse order
sort -n file.txt # Sort the lines of a file numerically
uniq file.txt # Remove duplicate lines from a file
uniq -c file.txt # Prefix lines with the number of occurrences
cut -d, -f1 file.csv # Extract the first field from a comma-separated file
cut -d, -f1,2 file.csv # Extract the first and second fields from a comma-separated file
cut -c1-5 file.txt # Extract the first five characters from each line of a file
grep pattern file.txt # Search for a pattern in a file
grep -v pattern file.txt # Search for lines that do not match a pattern
grep -i pattern file.txt # Search for a pattern in a file, ignoring case
grep -n pattern file.txt # Search for a pattern in a file, displaying line numbers
sed 's/old/new/' file.txt # Replace the first occurrence of a pattern in a file
sed 's/old/new/g' file.txt # Replace all occurrences of a pattern in a file
awk '{print $1}' file.txt # Print the first field of each line in a file
awk '{print $1, $2}' file.txt # Print the first and second fields of each line in a file
awk '{print NR, $0}' file.txt # Print the line number and content of each line in a file
```

## Output Redirection

### File Descriptors

- 0: Standard input (stdin)
- 1: Standard output (stdout)
- 2: Standard error (stderr)

```bash
command > file.txt # Redirect standard output to a file
command 2> file.txt # Redirect standard error to a file
command &> file.txt # Redirect both standard output and standard error to a file
command >> file.txt # Append standard output to a file
command 2>> file.txt # Append standard error to a file
command &>> file.txt # Append both standard output and standard error to a file
command < file.txt # Redirect standard input from a file
command1 | command2 # Redirect standard output of command1 to standard input of command2
command > /dev/null # Discard standard output
command 2> /dev/null # Discard standard error
command &> /dev/null # Discard both standard output and standard error
command > output.txt 2>&1 # Redirect standard error to standard output
tee file.txt # Redirect standard input to a file and standard output
```

Use stdin redirection to read input from a file, for example:

```bash
gzip < file.txt > file.gz # Creates file.gz file without remove the original file.txt
```

## Sync and Async Commands

```bash
command1; command2; command3 # Run commands sequentially
command1 && command2 && command3 # Run commands sequentially if the previous command was successful
command1 || command2 || command3 # Run commands sequentially until a command is successful
command1 & command2 & command3 # Run commands in the background
command1 & command2 && command3 # Run command1 in the background and command2 sequentially
command1 && command2 & command3 # Run command1 sequentially and command2 in the background
```

## Security

```bash
pwd # Change password
su user # Change session to specified user
sudo command # Execute command as root
sudo su # Change to root user
```

## Search and Count

```bash
which command # Display the path to bin
find route -name file # Find file name in directory
find route -name *.txt # Find file with wildcard in directory
find route -type fd -name file/dir # Find files and directories by type
find route -size 50M # Find files by size
grep pattern file # Search pattern into a file
grep -i pattern file # Search pattern into a file ignoring case sensitive
grep -c pattern file # Count number of occurrence
grep -v pattern file # Search all that not match the pattern
wc file # Count words in the file
wc -l file
wc -w file
wc -c bites
```

## More

```bash
whoami # Display current user
history # Display the command history
history | grep command # Search the command history for a specific command
alias l='foo command' # Create an alias for a command
ln -s source dest # Create a symbolic link from source to destination
```
