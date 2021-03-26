#! /bin/bash
printf 'YT Channel - https://www.youtube.com/c/AKYTRC \n'
printf "RDP installing... " >&2
{
sudo useradd -m kyrvim
sudo adduser kyrvim sudo
echo 'kyrvim:33646797' | sudo chpasswd
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=dialog \
sudo adduser kyrvim chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Completed " >&2 ||
printf "\nError Occured " >&2
printf '\nGO to https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - kyrvim -c """$CRP"""
printf 'kyrvim, u SUDO Password Is 33646797 \n'
