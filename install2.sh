#!/bin/bash

# Download the latest version of Flutter from the official website
wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_2.8.1-stable.tar.xz

# Extract the downloaded archive to the /opt directory
sudo tar xf flutter_linux_2.8.1-stable.tar.xz -C /opt

# Add the Flutter binary path to the system path
echo 'export PATH="$PATH:/opt/flutter/bin"' >> ~/.bashrc
source ~/.bashrc

# Install additional dependencies
sudo apt-get update
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa

# Accept the Android licenses
flutter doctor --android-licenses

# Verify the installation
flutter doctor
