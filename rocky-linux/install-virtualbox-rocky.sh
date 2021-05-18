#!/bin/bash

# Install "yum-config-manager":
sudo yum install -y yum-config-manager

# Install Linux devel headers and compilation utils:
sudo yum install -y kernel-devel gcc make perl elfutils-libelf-devel

# Add the Oracle Virtual Box official repository using "yum-config-manager":
sudo yum-config-manager --add-repo https://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo

# Install VirtualBox
sudo yum -y install VirtualBox-6.1
