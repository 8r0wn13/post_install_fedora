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
cd hamsket && npm install && npm run repack:win64 && cd ..
rm -rf hamsket

# Install insync
wget https://cdn.insynchq.com/builds/linux/insync-3.8.6.50504-fc38.x86_64.rpm
dnf install -y ./insync-3.8.6.50504-fc38.x86_64.rpm
rm -rf insync-3.8.6.50504-fc38.x86_64.rpm

# Install Burp
wget https://portswigger-cdn.net/burp/releases/download?product=community&version=2023.6.2&type=Linux
chmod +x burp_suite_community_linux_v2023_6_2.sh
./burp_suite_community_linux_v2023_6_2.sh
rm -rf burp_suite_community_linux_v2023_6_2.sh

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
rm -rf MullvadVPN-2023.4_x86_64.rpm

# Install Slimbook Battery
git clone https://github.com/Slimbook-Team/slimbookbattery.git && cd slimbookbattery && sudo ./deploy.sh && cd .. && rm -rf slimbookbattery

# Install smake for printer drivers
#wget https://sourceforge.net/projects/s-make/files/smake-1.2.5.tar.bz2/download#
#mv smake* smake.tar.bz2 && tar -xf smake.tar.bz2 && cd smake-1.2.5
#cp Gmake.linux /usr/bin/Gmake && sudo dnf install make -y && make

# Install printer drivers
#wget https://download.support.xerox.com/pub/drivers/DT100_CP/other/wins2003/en/cdrtools-2.00.3.tar.gz
#tar -xf cdrtools-2.00.3.tar.gz && cd cdrtools-2.00.3 && smake
