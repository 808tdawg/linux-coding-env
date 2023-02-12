# linux-coding-env
This script sets up a 64-bit ARM Ubuntu Linux environment with the latest version of Python, Visual Studio Code, Poetry, Docker, and the tree command. The script uses `sudo` for privileged operations, and the password is stored in the `PASSWORD` variable and passed to `sudo` as required. 

## Steps performed in the script:
1. Installs Python 3.10 using apt-get and creates a symbolic link to python.
2. Downloads Visual Studio Code for Linux ARM64 in .deb format using curl and installs it using dpkg.
3. Modifies the list of favorite apps in GNOME Shell by adding the terminal and Visual Studio Code and removing Thunderbird Mail, Rhythmbox, and LibreOffice Writer.
4. Installs Poetry using the command-line installer and adds it to the PATH.
5. Installs Docker using apt-get and starts and enables the Docker service.
6. Restarts the system.

## Note:
- The script uses `sudo` for privileged operations and passes the password stored in the `PASSWORD` variable to `sudo` using `echo $PASSWORD | sudo -S` before each command that requires elevated privileges.

## Installation steps in terminal:
`curl -O https://raw.githubusercontent.com/808tdawg/linux-coding-env/main/letscode.sh` 
<br>`bash letscode.sh`