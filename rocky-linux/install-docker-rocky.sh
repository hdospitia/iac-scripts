#!/bin/bash

# Clean previous versions:
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

# Install "yum-config-manager":
sudo yum -y install yum-config-manager

# Add the Docker official repository using "yum-config-manager":
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker and utilities:
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Start Docker daemon:
sudo systemctl start docker
