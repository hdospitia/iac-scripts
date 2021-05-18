#!/bin/bash

# Install "dnf config-manager":
sudo dnf install -y dnf-plugins-core

# Add the Hashicorp Official repository using "dnf config-manager":
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo

# Install Terraform:
sudo dnf -y install terraform