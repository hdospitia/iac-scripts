#!/bin/bash

# Clean previous versions:
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

# Install "dnf config-manager":
sudo dnf -y install dnf-plugins-core

# Add the Docker official repository using "dnf config-manager":
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Install Docker and utilities:
sudo dnf install -y docker-ce docker-ce-cli containerd.io

# Start Docker daemon:
sudo systemctl start docker
