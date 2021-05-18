#!/bin/bash

# Install "yum-config-manager":
sudo yum install -y yum-config-manager

# Add the Hashicorp Official repository using "yum-config-manager":
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

# Install Vagrant:
sudo yum -y install vagrant