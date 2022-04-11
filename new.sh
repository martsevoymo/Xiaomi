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
  mc \
