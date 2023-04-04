#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa

# Download and extract Flutter SDK
FLUTTER_VERSION="2.10.2" # Change to the latest version available
FLUTTER_DOWNLOAD_URL="https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz"
curl -L -O "${FLUTTER_DOWNLOAD_URL}"
tar xf "flutter_linux_${FLUTTER_VERSION}-stable.tar.xz"
rm "flutter_linux_${FLUTTER_VERSION}-stable.tar.xz"
export PATH="$PATH:`pwd`/flutter/bin"

# Add Flutter to the path permanently
echo 'export PATH="$PATH:`pwd`/flutter/bin"' >> ~/.bashrc
source ~/.bashrc

# Run Flutter doctor to check for any issues
flutter doctor

