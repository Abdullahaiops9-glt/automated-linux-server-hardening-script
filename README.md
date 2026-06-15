# Automated Linux Server Hardening Script

## Overview

This project demonstrates how to automate Linux server hardening tasks using Bash scripting on an Ubuntu-based system.

The goal is to reduce manual configuration effort while applying common security best practices used by Linux System Administrators.

## The Hardening Process Includes

- SSH Security Configuration
- Firewall Configuration
- UFW Firewall Verification
- Critical File Permission Hardening
- Service Auditing
- Open Port Auditing
- Verification Reporting

## Technologies Used

- Ubuntu Server
- Bash Scripting
- OpenSSH
- UFW
- Systemctl
- Journalctl

## Security Controls Implemented

### 1. SSH Hardening

#### The Script

- Creates SSH configuration backup
- Disables root login
- Disables empty passwords
- Limits authentication attempts
- Restarts SSH service

#### Verification

```bash
sudo grep PermitRootLogin /etc/ssh/sshd_config
```

### 2. Firewall Configuration

#### The Script

- Enables UFW
- Allows SSH access
- Applies firewall rules
- Verifies firewall status

#### Verification

```bash
sudo ufw status verbose
```

### 3. UFW Firewall Verification

#### The Script Verifies

- UFW installation status
- Firewall active status
- Configured firewall rules

#### Verification

```bash
sudo ufw status verbose
```
