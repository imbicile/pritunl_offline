#!/bin/bash
sudo apt update
sudo apt install dkms iptables -y
sudo dkms autoinstall
sudo dpkg -i *.deb
sudo apt install -f -y
sudo systemctl enable mongod pritunl
sudo systemctl start mongod pritunl
sudo dkms autoinstall
sudo dkms status
sudo ss -tulpan | grep pritunl
sleep 5
sudo pritunl setup-key
