#!/bin/bash 
echo Fixing ubuntu
wget -q -O - https://fixubuntu.com/fixubuntu.sh | bash
echo Installing basic tweaks
sudo apt-get install unity-tweak-tool gnome-tweak-tool
sudo apt-get install compizconfig-settings-manager
gsettings set com.canonical.indicator.session show-real-name-on-panel true
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme numix-icon-theme-circle



