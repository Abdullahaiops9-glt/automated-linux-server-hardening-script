Automated Linux Server Hardening Script

Overview

This project demonstrates how to automate Linux server hardening tasks using Bash scripting on a RHEL-based system.

The goal is to reduce manual configuration effort while applying common security best practices used by Linux System Administrators.

The hardening process includes:

SSH Security Configuration
Firewall Configuration
SELinux Verification
Critical File Permission Hardening
Service Auditing
Open Port Auditing
Verification Reporting

Project Objectives
Improve Linux server security
Automate repetitive administration tasks
Apply security best practices
Generate validation reports
Practice Bash scripting for system administration

Technologies Used
RHEL / Rocky Linux / AlmaLinux
Bash Scripting
OpenSSH
Firewalld
SELinux
Systemctl
Journalctl

Project Structure

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

Security Controls Implemented

SSH Hardening

The script:

Creates SSH configuration backup
Disables root login
Disables empty passwords
Limits authentication attempts
Restarts SSH service

Verification:

sudo grep PermitRootLogin /etc/ssh/sshd_config

Firewall Configuration

The script:

Enables firewalld
Starts firewalld service
Allows SSH access
Reloads firewall rules

Verification:

sudo firewall-cmd --list-all

SELinux Verification

The script verifies:

SELinux status
Enforcing mode

Verification:

getenforce

File Permission Hardening

Critical files checked:

/etc/shadow
/etc/gshadow
/etc/passwd

Verification:

ls -l /etc/shadow

Service Auditing

The verification script displays:

Running services
Enabled services
Open listening ports

Verification:

systemctl list-units --type=service

ss -tuln

Running The Project

Make scripts executable:

chmod +x hardening.sh

chmod +x verification.sh

chmod +x commands.sh

Execute hardening:

sudo ./hardening.sh

Run verification:

sudo ./verification.sh


Sample Verification Checks

Verify SSH:

grep PermitRootLogin /etc/ssh/sshd_config

Verify Firewall:

systemctl status firewalld

Verify SELinux:

getenforce

Verify Open Ports:

ss -tuln

Verify Critical File Permissions:

ls -l /etc/shadow


Screenshots Included

Project Structure
Script Creation
Script Execution
SSH Configuration
Firewall Configuration
SELinux Status
Verification Report
Final Hardened Server
Skills Demonstrated
Linux Administration
Bash Scripting
SSH Hardening
Firewall Management
SELinux Verification
Security Auditing
Service Management
Troubleshooting
System Hardening 

Learning Outcome

This project strengthened practical skills in Linux security and automation. It demonstrates how Bash scripting can be used to automate server hardening tasks while maintaining consistency across multiple systems.

The techniques used in this project are commonly applied by Linux System Administrators when securing production servers and preparing systems for operational use.
