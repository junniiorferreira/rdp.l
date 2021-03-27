#! /bin/bash
printf 'YT Channel - https://www.youtube.com/c/AKYTRC \n'
printf "RDP installing... " >&2
{
sudo useradd -m KYRVIM
sudo adduser KYRVIM sudo
echo 'KYRVIM:33646797' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
sudo apt-get upgrade -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive apt install --assume-yes xfce4 xfce4-goodies
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo adduser KYRVIM chrome-remote-desktop
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
} &> /dev/null &&
printf "\nSetup Completed " >&2 ||
printf "\nError Occured " >&2
printf '\nGO to https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - KYRVIM -c """$CRP"""
printf 'Your SUDO Password Is DEFAULT \n'
