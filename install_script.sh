#!/bin/bash

cd ..

# Update packages
sudo dnf upgrade --refresh -y
sudo dnf upgrade -y

# Install packages from repository
sudo dnf install wireshark wfuzz terminator skrooge hydra john nmap aria2 btop ffuf flameshot -y

# Install VLC
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install vlc -y
sudo dnf install python-vlc -y
vlc --version

# Install sqlmap
sudo dnf install python3 -y
sudo dnf install python3-pip -y
python3 -m pip3 install sqlmap
sqlmap --version

# Install Hamsket
wget https://github.com/TheGoddessInari/hamsket/releases/download/nightly/Hamsket-0.6.5.x86_64.rpm && sudo dnf install ./Hamsket*.rpm

# Install insync
wget https://cdn.insynchq.com/builds/linux/insync-3.8.6.50504-fc38.x86_64.rpm
sudo dnf install -y ./insync-3.8.6.50504-fc38.x86_64.rpm
insync version
rm -rf insync-3.8.6.50504-fc38.x86_64.rpm

# Install ZAP
wget https://github.com/zaproxy/zaproxy/releases/download/v2.13.0/ZAP_2_13_0_unix.sh
sudo chmod +x ZAP_2_13_0_unix.sh && sudo ./ZAP_2_13_0_unix.sh
rm -rf ZAP_2_13_0_unix.sh

# Install Visual Studio Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
printf "[vscode]\nname=packages.microsoft.com\nbaseurl=https://packages.microsoft.com/yumrepos/vscode/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscode.repo
sudo dnf install code -y
#wget https://az764295.vo.msecnd.net/stable/74f6148eb9ea00507ec113ec51c489d6ffb4b771/code-1.80.1-1689183644.el7.x86_64.rpm
#sudo dnf install -y code-1.80.1-1689183644.el7.x86_64.rpm
#rm -rf code-1.80.1-1689183644.el7.x86_64.rpm

# Install Slimbook Battery - libnotify-bin is not available for Fedora
#git clone https://github.com/Slimbook-Team/slimbookbattery.git && cd slimbookbattery && sudo ./deploy.sh && cd .. && slimbookbattery && rm -rf slimbookbattery

# Install printer drivers
cd post_install_fedora && sudo dnf install ./fuji-xerox-docuprint-c525-a-ap-1.0-3.i386.rpm -y && cd .. && rm -rf post_install_fedora

# Install Mullvad
wget --content-disposition https://mullvad.net/download/app/rpm/latest
sudo dnf install -y ./MullvadVPN-2023.4_x86_64.rpm
mullvad version

# Install Burp
# Needs to be installed manually
