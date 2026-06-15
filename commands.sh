#!/bin/bash

chmod +x hardening.sh
chmod +x verification.sh

sudo ./hardening.sh
sudo ./verification.sh

grep PermitRootLogin /etc/ssh/sshd_config

systemctl status firewalld

getenforce

systemctl list-units --type=service --state=running

ss -tuln
