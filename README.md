# linux-coding-env

## Overview
This script automates the setup of a Linux programming system, installing and configuring various software and tools.

## Requirements
- A Linux Ubuntu system with the `bash` shell
- ARM64 architecture 

## What the script does
1. Installs Python 3.10 using `apt-get`
2. Downloads and installs Visual Studio Code for Linux ARM64
3. Sets the terminal and Visual Studio Code as favorites in the Gnome Shell
4. Installs Poetry and adds it to the PATH
5. Installs Docker and the `tree` command
6. Starts the Docker service and enables it to start at boot time
7. Reboots the system

## Note:
- The script uses `sudo` for privileged operations and passes the password stored in the `PASSWORD` variable to `sudo` using `echo $PASSWORD | sudo -S` before each command that requires elevated privileges.
- Developed on Parallels, using an M1 MacBook Air.

## Installation steps in terminal:
1. `curl -O https://raw.githubusercontent.com/808tdawg/linux-coding-env/main/letscode.sh` 
2. `bash letscode.sh`