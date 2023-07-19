#!/bin/bash

# Update packages
sudo dnf update

# Install packages from repository
sudo dnf install wireshark wfuzz terminator skrooge hydra john nmap aria2 btop ffuf flameshot -y

# Install VLC
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install vlc
sudo dnf install python-vlc (optional)
vlc --version

# Install sqlmap
sudo dnf install -y python3
sudo dnf install -y python3-pip
sudo pip3 install -y sqlmap
sqlmap --version

# Install Hamsket
sudo dnf install npm -y && git clone https://github.com/TheGoddessInari/hamsket.git
cd hamsket && npm install && npm start && cd ..
hamsket --version
rm -rf hamsket

# Install insync
wget https://cdn.insynchq.com/builds/linux/insync-3.8.6.50504-fc38.x86_64.rpm
dnf install -y ./insync-3.8.6.50504-fc38.x86_64.rpm
insync --version
rm -rf insync-3.8.6.50504-fc38.x86_64.rpm

# Install ZAP
wget https://github.com/zaproxy/zaproxy/releases/download/v2.13.0/ZAP_2_13_0_unix.sh
sudo chmod +x ZAP_2_13_0_unix.sh && ./ZAP_2_13_0_unix.sh
rm -rf ZAP_2_13_0_unix.sh

# Install Visual Studio Code
wget https://az764295.vo.msecnd.net/stable/74f6148eb9ea00507ec113ec51c489d6ffb4b771/code-1.80.1-1689183644.el7.x86_64.rpm
sudo dnf install -y code-1.80.1-1689183644.el7.x86_64.rpm
rm -rf code-1.80.1-1689183644.el7.x86_64.rpm

# Install Mullvad
wget --content-disposition https://mullvad.net/download/app/rpm/latest
sudo dnf install -y ./MullvadVPN-2023.4_x86_64.rpm
mullvad version
mullvad connect
rm -rf MullvadVPN-2023.4_x86_64.rpm

# Install Slimbook Battery
git clone https://github.com/Slimbook-Team/slimbookbattery.git && cd slimbookbattery && sudo ./deploy.sh && cd .. && slimbookbattery && rm -rf slimbookbattery

# Install printer drivers
# Download the rpm file from https://github.com/8r0wn13/post_install_fedora/
# sudo dnf install -y ./fuji-xerox-docuprint-c525-a-ap-1.0-3.i386.rpm

# Install Burp
# Needs to be installed manually
