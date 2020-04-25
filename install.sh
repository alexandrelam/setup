#!/bin/bash
sudo apt update
sudo apt -y upgrade

#install google chrome
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update
sudo apt -y install google-chrome-stable

#install youtube-dl
sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl
hash -r
sudo youtube-dl -U

#install mpv
sudo add-apt-repository -y ppa:mc3man/mpv-tests
sudo apt -y install mpv


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

#uninstall firefox
sudo apt -y remove firefox
sudo apt -y autoremove
