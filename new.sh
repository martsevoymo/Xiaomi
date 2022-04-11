#!/bin/bash
set -e
echo "Install"
sleep 2
opkg update
opkg install \
  kmod-usb-core \
  kmod-usb-ohci \
  kmod-usb-storage \
  kmod-usb2 \
  block-mount \
  fdisk \
  luci-app-ttyd \
  nano \
  mc 
sleep 2
opkg update
opkg install \
  lumimqtt \
  mpd-full
  git-http \
  mpc \
  mpg123 \
  janus==1.0.0 \
  aioblescan==0.2.12 \
  hatasmota==0.3.1 \
  wled==0.13.0 \
  mosquitto \
  node-zigbee2mqtt 
  
echo "Packages are installed"
sleep 2
echo "Adding configuration entries to zigbee2mqtt"
sleep 2
sed -i 's/port: 8080/port: 8090/' /etc/zigbee2mqtt/configuration.yaml
sed -i 's/homeassistant: false/homeassistant: true/' /etc/zigbee2mqtt/configuration.yaml
echo "Configuration entries in zigbee2mqtt have been added"
sleep 2
  
wget https://raw.githubusercontent.com/DivanX10/OpenWRT-and-Home-Assistant/main/scripts/2021/homeassistant_install_2021_11_4.sh -O - | sh

echo "The installation of the basic set is completed, after 10 seconds the gateway will reboot"
sleep 10
reboot 
