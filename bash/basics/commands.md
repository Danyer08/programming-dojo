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
tail file.txt # Display the last few lines of a file
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
