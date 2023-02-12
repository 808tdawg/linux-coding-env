#!/bin/bash

# Define the password variable
PASSWORD="requiredpassword"

# Install Python 3.10 with sudo and pass the password to sudo
echo $PASSWORD | sudo -S apt-get update
echo $PASSWORD | sudo -S apt-get install -y python3.10
sudo ln -s $(which python3) /usr/bin/python

# Download Visual Studio Code for Linux ARM64 .deb package
curl -L -o vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-arm64"

# Install the package using dpkg with sudo and pass the password to sudo
echo $PASSWORD | sudo -S dpkg -i vscode.deb

# Automatically answer yes to any prompts during the installation
yes | sudo apt-get install -f

# Remove the .deb package file with sudo and pass the password to sudo
echo $PASSWORD | sudo -S rm vscode.deb

# Get the current list of favorites
favorites=$(gsettings get org.gnome.shell favorite-apps)

# Add the terminal and Visual Studio Code to the list of favorites
favorites="${favorites::-1},'gnome-terminal.desktop','code.desktop']"

# Remove Thunderbird Mail, Rhythmbox, LibreOffice Writer, and Help from the list of favorites
favorites=$(echo $favorites | sed "s/'thunderbird.desktop',//g;s/'rhythmbox.desktop',//g;s/'libreoffice-writer.desktop',//g;s/'yelp.desktop',//g")

# Set the new list of favorites
gsettings set org.gnome.shell favorite-apps "$favorites"

# Install Poetry
curl -sSL https://install.python-poetry.org | python3 -

# Add Poetry to PATH
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Install the tree command with sudo and pass the password to sudo
echo $PASSWORD | sudo -S apt-get install -y tree

# Install Docker with sudo and pass the password to sudo
echo $PASSWORD | sudo -S apt-get install -y docker.io

# Start the Docker service and enable it to start at boot time with sudo and pass the password to sudo
echo $PASSWORD | sudo -S systemctl start docker
echo $PASSWORD | sudo -S systemctl enable docker

# Restart the system with sudo and pass the password to sudo
echo $PASSWORD | sudo -S reboot