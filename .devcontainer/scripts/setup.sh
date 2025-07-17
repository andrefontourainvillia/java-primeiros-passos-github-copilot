#!/bin/bash

# Setup script for Java Spring Boot development environment
set -e

echo "Starting development environment setup..."

# Update package list and install required packages
echo "Installing system packages..."
sudo apt-get update -y
sudo apt install -y sl libgpm2 libncurses6

# Make all scripts in the scripts directory executable
echo "Making scripts executable..."
chmod +x .devcontainer/scripts/*.sh

# Initialize MongoDB
echo "Initializing MongoDB..."
./.devcontainer/scripts/init-mongodb.sh

# Run test setup
echo "Running test setup..."
./.devcontainer/scripts/test-setup.sh

echo "Development environment setup completed!"
