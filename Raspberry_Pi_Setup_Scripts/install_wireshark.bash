#!/bin/bash
sudo apt-get update
echo wireshark-common wireshark-common/install-setuid boolean true | sudo /usr/bin/debconf-set-selections
sudo apt-get install wireshark -y
echo wireshark-common wireshark-common/install-setuid boolean true | sudo /usr/bin/debconf-set-selections
sudo DEBIAN_FRONTEND=noninteractive dpkg-reconfigure wireshark-common
sudo adduser $USER wireshark
echo "Wireshark is Installed"
sleep 5
