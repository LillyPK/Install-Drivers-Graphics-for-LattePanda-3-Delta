#!/bin/bash
# 1. Clean up old CD-ROM sources
sudo sed -i '/deb cdrom/s/^/#/' /etc/apt/sources.list

# 2. Update and Install Pop!_OS specific Intel drivers
sudo apt update
sudo apt install -y \
    intel-media-va-driver-non-free \
    intel-microcode \
    linux-firmware \
    vainfo \
    mesa-utils \
    vulkan-tools

glxinfo | grep "OpenGL renderer"
vulkaninfo | grep "apiVersion"
