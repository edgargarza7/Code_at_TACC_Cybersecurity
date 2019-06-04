#!/usr/bin/env bash
/usr/bin/git clone https://github.com/edgargarza7/Code_at_TACC_Cybersecurity.git
cd ./Code_at_TACC_Cybersecurity/Raspberry_Pi_Setup_Scripts
SCRIPTS_FROM="$(pwd)"
echo $SCRIPTS_FROM
echo "Starting Jupyter Notebooks and Requirements Install"
echo " "
$SCRIPTS_FROM/install_jupyter-notebooks.bash
sleep 5
echo "All done!"
echo " "
echo "Installing Wireshark"
$SCRIPTS_FROM/install_wireshark.bash
echo " "
echo "Making PCAPS Folder on Desktop"
tar -xvf $SCRIPTS_FROM/Security/wireshark-pcaps.tar.gz -C /home/pi/Desktop
echo " "
echo "Making Crytpo Python Folder on Desktop"
tar -xvf $SCRIPTS_FROM/Security/crypto-python.tar.gz -C /home/pi/Desktop
echo "Adding Bookmarks"
mkdir -p /home/pi/.config/chromium/Default/
cp $SCRIPTS_FROM/Security/Bookmarks /home/pi/.config/chromium/Default/Bookmarks
echo " "
echo "Installing mpack-tools for encoding-decoding MIME messages"
sudo apt-get install mpack -y
echo " "
echo "All done!"
echo "Later you should run sudo apt-get upgrade -y; sudo apt-get update -y"
sleep 30
