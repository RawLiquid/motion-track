#!/bin/sh
# Convenient install script written by Claude Pageau 1-Jul-2016
# ver 1.0
echo "speed2 install/update"
echo "1 - Performing System Updates"
sudo apt-get -y update
sudo apt-get -y upgrade
echo "2 - Installing Dependencies"
sudo apt-get install -y python-opencv python-picamera python-imaging python-pyexiv2 libgl1-mesa-dri
sudo apt-get install -y fonts-freefont-ttf # Required for Jessie Lite Only
cd ~
echo "3 - Creating folder speed2"
mkdir speed2
cd speed2
echo "4 - Downloading github repo files"
wget -O speed2.py https://raw.github.com/pageauc/motion-track/master/speed-track-2/install.sh
wget -O speed2.py https://raw.github.com/pageauc/motion-track/master/speed-track-2/speed2.py
wget -O speed2.sh https://raw.github.com/pageauc/motion-track/master/speed-track-2/speed2.sh
wget -O Readme.md https://raw.github.com/pageauc/motion-track/master/speed-track-2/Readme.md
wget https://raw.github.com/pageauc/motion-track/master/speed-track-2/config.py
echo "5 - Make required Files Executable"
chmod +x speed2.py
chmod +x speed2.sh
chmod +x install.sh
echo "6 - Installation Complete"
echo "See Readme.md for program details"
echo "Note: if config.py already exists then new file ends with a sequence number"
echo "You should reboot RPI if there are significant system file updates"









