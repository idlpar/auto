#!/bin/sh
figlet SKY

echo -e "\e[48:5:42m\e[1m\e[31m\e[5m Auto APT-GET Update and Upgrade \e[0m"
sudo apt-get update && sudo apt-get upgrade -y 

echo -e "\e[48:5:42m\e[1m\e[31m\e[5mAuto APT Update and Upgrade \e[0m"
sudo apt update -y && apt list --upgradable && sudo apt upgrade -y

echo -e "\e[48:5:42m\e[1m\e[31m\e[5m Leftover Files \e[0m"
sudo apt autoremove -y && sudo apt autoclean -y && sudo apt clean

echo -e "\e[48:5:42m\e[1m\e[31m\e[5m Enable Bluetooth \e[0m"
sudo systemctl start bluetooth.service
echo -e "Bluetooth Enabled"

echo -e "\e[48:5:42m\e[1m\e[31m\e[5m Finish Code \e[0m"
