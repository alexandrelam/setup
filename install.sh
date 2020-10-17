#!/bin/bash
cd

sudo apt update
sudo apt -y upgrade

#install google chrome
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update
sudo apt -y install google-chrome-stable

#install sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt -y install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt -y update
sudo apt -y install sublime-text

#install python
sudo apt -y install python3

#install pip
sudo apt -y install python3-pip

#install git
sudo apt -y install git

#install vim
sudo apt -y install vim

#uninstall firefox
sudo apt -y remove firefox
sudo apt -y autoremove

#install curl
sudo apt -y install curl

#install node and npm
sudo apt -y install nodejs
sudo apt -y install npm

#install obs studio pour record
sudo add-apt-repository -y ppa:obsproject/obs-studio && sudo apt install -y ffmpeg obs-studio

#use alt right click to move and resize windows
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Alt>'
