#!/bin/bash

# Clean previous versions:
sudo apt-get remove docker docker-engine docker.io containerd runc

# Install repo utilities:
sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

# Get and register official repo GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add the Docker official repo:
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker and utilities:
sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Start Docker daemon:
sudo systemctl start docker