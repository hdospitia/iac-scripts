#!/bin/bash

# Install repo utilities:
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

# Get and register official repo keys:
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Add the VirtualBox official repo:
sudo apt-add-repository "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"

# Install VirtualBox:
sudo apt-get update && sudo apt-get install -y virtualbox-6.1
