#!/bin/bash

set -e

INSTALL_DIR="/usr/local/bin"
LIB_DIR="/usr/local/lib/webapp-manager"

echo "Installing webapp-manager..."

# Check dependencies
if ! command -v rofi &> /dev/null; then
    echo "Error: rofi is required but not installed."
    exit 1
fi

if ! command -v python3 &> /dev/null; then
    echo "Error: python3 is required but not installed."
    exit 1
fi

# Create lib directory
sudo mkdir -p "$LIB_DIR"

# Install backend script
sudo cp webapps.old "$LIB_DIR/webapps.old"
sudo chmod +x "$LIB_DIR/webapps.old"

# Install main script and update path to webapps.old
sudo cp webapps "$INSTALL_DIR/webapps"
sudo sed -i "s|webapps.old|$LIB_DIR/webapps.old|g" "$INSTALL_DIR/webapps"
sudo chmod +x "$INSTALL_DIR/webapps"

echo "✓ Installation complete!"
echo ""
echo "Run 'webapps' to launch the webapp manager."
