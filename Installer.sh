#!/bin/sh
echo "This is untested for the time being and is not guaranteed to work, with that said,"
echo "Beginning Process"
# Install git
sudo apt install git
# Install neofetch
sudo apt install neofetch
# Install Htop
sudo apt install Htop
# Install Evolution Email Client
sudo apt install Evolution
# Install Bitwarden Password Manager
sudo apt install Bitwarden
# Install KeePassXC Password Manager
sudo apt install keepassxc
# Install Brave Browser
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
# Install newest version of NodeJS 12 LTS
echo -n "Is this distro closer to Debian or Ubuntu? (1 = Debian/2 = Ubuntu)?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
# Using Debian, as root
curl -sL https://deb.nodesource.com/setup_12.x | bash -
sudo apt-get install -y nodejs
sudo apt-get install gcc g++ make
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
else
# Using Ubuntu
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install gcc g++ make
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
fi
node --version
npm --version
# Install Electron (Requires Nodejs)
npm install electron --save-dev
# Install ReactNative (Requires Nodejs)
npm install -g expo-cli
# Install Redux (Requires Nodejs)
