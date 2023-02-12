# linux-coding-env

## Overview
This script is a helpful tool for setting up a Linux programming environment for Python development. The script automates the installation and configuration of various software and tools, including Python 3.10, Visual Studio Code, Poetry, Docker, and others. It is designed for use on Ubuntu systems with ARM64 architecture and the bash shell.

Overall, this script provides a simple and repeatable way to set up a Linux programming environment, saving time and effort for those who need to set up multiple environments for school labs or personal projects.

## What the script does
1. Installs Python 3.10 using `apt-get`
2. Downloads and installs Visual Studio Code for Linux ARM64
3. Sets the terminal and Visual Studio Code as favorites in the Gnome Shell
4. Installs Poetry and adds it to the PATH
5. Installs Docker and the `tree` command
6. Starts the Docker service and enables it to start at boot time
7. Reboots the system

## Note
- The script requires elevated privileges for certain operations and uses sudo to achieve this. The password is stored in a variable named PASSWORD and is passed to sudo using the command echo $PASSWORD | sudo -S before each operation that requires it. To use the script on your system, make sure to update the password stored in the PASSWORD variable at the top of the script.
- Developed on an M1 MacBook Air, using Parallels Desktop v18.

## Installation steps in terminal
1. `curl -O https://raw.githubusercontent.com/808tdawg/linux-coding-env/main/letscode.sh` 
2. `bash letscode.sh`
