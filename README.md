# Automated Linux Server Hardening Script

## Overview

This project demonstrates how to automate Linux server hardening tasks using Bash scripting on a RHEL-based system.

The goal is to reduce manual configuration effort while applying common security best practices used by Linux System Administrators.

## The hardening process includes:

* SSH Security Configuration
* Firewall Configuration
* SELinux Verification
* Critical File Permission Hardening
* Service Auditing
* Open Port Auditing
* Verification Reporting

## Project Objectives

* Improve Linux server security
* Automate repetitive administration tasks
* Apply security best practices
* Generate validation reports
* Practice Bash scripting for system administration

## Technologies Used

* RHEL / Rocky Linux / AlmaLinux
* Bash Scripting
* OpenSSH
* Firewalld
* SELinux
* Systemctl
* Journalctl

## Project Structure

```text
automated-linux-server-hardening-script/

│
├── hardening.sh
├── verification.sh
├── commands.sh
├── README.md
│
└── screenshots/
    ├── 1-project-structure.png
    ├── 2-hardening-script-created.png
    ├── 3-verification-script-created.png
    ├── 4-file-permission-verification.png
    ├── 5-hardening-script-execution.png
    ├── 6-verification-script-execution.png
    ├── 7-ssh-firewall-selinux-verification.png
    ├── 8-service-audit.png
    ├── 9-open-ports-audit.png
    └── 10-final-server-status.png
```

## Security Controls Implemented

### 1. SSH Hardening

#### The script:

* Creates SSH configuration backup
* Disables root login
* Disables empty passwords
* Limits authentication attempts
* Restarts SSH service

#### Verification:

```bash
sudo grep PermitRootLogin /etc/ssh/sshd_config
```

### 2. Firewall Configuration

#### The script:

* Enables firewalld
* Starts firewalld service
* Allows SSH access
* Reloads firewall rules

#### Verification:

```bash
sudo firewall-cmd --list-all
```

### 3. SELinux Verification

#### The script verifies:

* SELinux status
* Enforcing mode

#### Verification:

```bash
getenforce
```

### 4. File Permission Hardening

#### Critical files checked:

* /etc/shadow
* /etc/gshadow
* /etc/passwd

#### Verification:

```bash
ls -l /etc/shadow
```

### 5. Service Auditing

#### The verification script displays:

* Running services
* Enabled services
* Open listening ports

#### Verification:

```bash
systemctl list-units --type=service

ss -tuln
```

## Running The Project

### Make scripts executable:

```bash
chmod +x hardening.sh

chmod +x verification.sh

chmod +x commands.sh
```

### Execute hardening:

```bash
sudo ./hardening.sh
```

### Run verification:

```bash
sudo ./verification.sh
```

## Sample Verification Checks

### Verify SSH:

```bash
grep PermitRootLogin /etc/ssh/sshd_config
```

### Verify Firewall:

```bash
systemctl status firewalld
```

### Verify SELinux:

```bash
getenforce
```

### Verify Open Ports:

```bash
ss -tuln
```

### Verify Critical File Permissions:

```bash
ls -l /etc/shadow
```

## Screenshots Included

1. Project Structure
2. Script Creation
3. Script Execution
4. SSH Configuration
5. Firewall Configuration
6. SELinux Status
7. Verification Report
8. Final Hardened Server

## Skills Demonstrated

* Linux Administration
* Bash Scripting
* SSH Hardening
* Firewall Management
* SELinux Verification
* Security Auditing
* Service Management
* Troubleshooting
* System Hardening

## Learning Outcome

This project strengthened practical skills in Linux security and automation. It demonstrates how Bash scripting can be used to automate server hardening tasks while maintaining consistency across multiple systems.

The techniques used in this project are commonly applied by Linux System Administrators when securing production servers and preparing systems for operational use.
