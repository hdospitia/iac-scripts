#!/bin/bash

# Install repo utilities:
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

# Get and register official repo GPG key:
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Add the Hashicorp official repo:
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Install Packer:
sudo apt-get update && sudo apt-get install -y packer