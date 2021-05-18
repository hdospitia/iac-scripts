#!/bin/bash

# Install "dnf config-manager":
sudo dnf install -y dnf-plugins-core

# Add the Oracle Virtual Box official repository using "dnf config-manager":
sudo dnf config-manager --add-repo https://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo

# Install VirtualBox
sudo dnf -y install VirtualBox-6.1
