#!/bin/bash

chmod +x hardening.sh
chmod +x verification.sh

sudo ./hardening.sh
sudo ./verification.sh

grep PermitRootLogin /etc/ssh/sshd_config

sudo ufw status verbose

systemctl list-units --type=service --state=running

ss -tuln
