#!/bin/bash

echo "===== Verification Report ====="

echo ""
echo "SSH Root Login Status:"
grep PermitRootLogin /etc/ssh/sshd_config

echo ""
echo "Firewall Status:"
sudo ufw status

echo ""
echo "AppArmor Status:"
sudo aa-status 2>/dev/null || echo "AppArmor utility not installed"

echo ""
echo "Critical File Permissions:"
ls -l /etc/passwd
ls -l /etc/shadow

echo ""
echo "Running Services:"
systemctl list-units --type=service --state=running | head -20

echo ""
echo "Open Ports:"
ss -tuln

echo ""
echo "===== Verification Complete ====="
