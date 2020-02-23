#!/bin/sh
echo "This is untested for the time being and is not guaranteed to work, with that said,"
echo "Beginning Process..."
# Update System
echo "Installing System Updates"
sudo apt update
sudo apt-get dist-upgrade
sudo apt install
# Install git
echo "Installing git"
sudo apt install git
# Installing Snap Packager (Required for some things like Bitwarden)
sudo apt install snapd
# Install neofetch
echo "Installing Neofetch"
sudo apt install neofetch
# Install Htop
echo "Installing Htop"
sudo apt install htop
# Install Evolution Email Client
echo "Installing Evolution Email"
sudo apt install evolution
# Install Bitwarden Password Manager
echo "Installing Bitwarden Password Manager"
sudo snap install bitwarden
# Install KeePassXC Password Manager
echo "Installing KeePassXC"
sudo apt install keepassxc
# Install BleachBit
echo "Installing BleachBit"
sudo apt install bleachbit
# Install Brave Browser
echo "Installing the Brave Browser"
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
# Install newest version of NodeJS 12 LTS
echo "Installing NodeJS 12"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install gcc g++ make
node --version
npm --version
# Install Yarm
echo "Installing yarn"
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
     echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
# Install Electron (Requires Nodejs)
echo "Installing Electronjs"
npm install electron -g
# Install ReactNative (Requires Nodejs)
echo "Installing React-Native"
npm install -g expo-cli
# Install Redux (Requires Nodejs)
npm install redux
npm install react-redux
# Cleanup
echo "Cleanning Up..."
sudo apt autoremove

# Done
echo "Done!"
echo "We Hope this was useful for you, script created by Gamegenorator (https://Github.com/Gamegenorator)"
