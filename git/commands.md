# Basic Git Commands

## Table of Contents

- [Repository setup](#repository-setup)
- [Staging and committing](#staging-and-committing)
- [Branching and merging](#branching-and-merging)
- [History and diffs](#history-and-diffs)
- [Tagging](#tagging)
- [Remote repositories](#remote-repositories)
- [Configuration](#configuration)
- [Ignoring files](#ignoring-files)
- [Help](#help)
- [Other commands](#other-commands)
- [References](#references)

## Repository setup

```bash
git init # Create an empty Git repository
git clone {url} # Clone a repository into a new directory
git remote add origin {url} # Add a remote repository
git remote -v # List remote repositories
git remote rm origin # Remove a remote repository
git remote set-url origin {url} # Change the URL of a remote repository
```

## Staging and committing

```bash
git status # Show the working tree status
git add {file} # Add file contents to the index
git add . # Add all new and modified files to the index
git commit -m "Message" # Record changes to the repository
git commit -am "Message" # Add and commit changes in one step
git reset {file} # Unstage a file
git reset --hard # Discard all changes
```

## Branching and merging

```bash
git branch # List branches
git branch {branch} # Create a new branch
git checkout {branch} # Switch to a branch
git checkout -b {branch} # Create and switch to a new branch
git merge {branch} # Merge a branch into the current branch
git branch -d {branch} # Delete a branch
```

## History and diffs

```bash
git log # Show commit logs
git log --oneline # Show commit logs with one line per commit
git diff # Show changes between commits, commit and working tree, etc
git diff --staged # Show changes between the index and the latest commit
```

## Tagging

```bash
git tag # List tags
git tag {tag} # Create a tag
git tag -a {tag} -m "Message" # Create an annotated tag
git tag -d {tag} # Delete a tag
```

## Remote repositories

```bash
git push origin {branch} # Push a branch to a remote repository
git pull origin {branch} # Pull changes from a remote repository
git fetch origin # Fetch changes from a remote repository
git merge origin/{branch} # Merge changes from a remote branch
```

## Configuration

```bash
git config --global user.name "Name" # Set the name for Git
git config --global user.email "Email" # Set the email for Git
git config --global core.editor "Editor" # Set the default text editor
git config --global color.ui auto # Enable colored output
```

## Ignoring files

```bash
touch .gitignore # Create a .gitignore file
```

## Help

```bash
git help # Show the help message
git help {command} # Show help for a specific command
```

## Other commands

```bash
git clean -f # Remove untracked files
git stash # Stash changes in a dirty working directory
git stash pop # Apply the most recently stashed changes
```

## References

- [Git Documentation](https://git-scm.com/doc)
- [Pro Git Book](https://git-scm.com/book/en/v2)
- [GitHub Guides](https://guides.github.com/)
- [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials)
- [Git Cheat Sheet](https://www.git-tower.com/blog/git-cheat-sheet/)
