#!/bin/bash

echo "===== Linux Server Hardening Started ====="

# Update packages
sudo apt update -y

# Install UFW if not installed
sudo apt install ufw -y

# Configure SSH
sudo sed -i 's/^#*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config

# Restart SSH service
sudo systemctl restart ssh

# Enable and configure firewall
sudo ufw allow OpenSSH
sudo ufw --force enable

# Check SELinux status (Ubuntu usually uses AppArmor)
if command -v sestatus &>/dev/null; then
    sestatus
else
    echo "SELinux not installed (Normal on Ubuntu)"
fi

# Secure critical files
sudo chmod 644 /etc/passwd
sudo chmod 640 /etc/shadow

echo "===== Hardening Complete ====="
