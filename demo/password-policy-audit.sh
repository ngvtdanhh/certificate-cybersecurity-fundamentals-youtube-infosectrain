#!/bin/bash
# 🔐 Password Policy Audit Script (Linux)

echo "=== Password Policy Audit ==="

# 1. Check /etc/login.defs for password aging policy
echo "[+] Checking password aging policy in /etc/login.defs"
grep -E 'PASS_MAX_DAYS|PASS_MIN_DAYS|PASS_WARN_AGE' /etc/login.defs

# 2. Check PAM password complexity
echo -e "\n[+] Checking PAM password complexity rules"
grep pam_pwquality.so /etc/pam.d/common-password

# 3. Check shadow file for weak passwords
echo -e "\n[+] Checking for users with empty passwords"
awk -F: '($2 == "") {print $1 " has no password!"}' /etc/shadow

echo -e "\n[✔] Audit complete. Consider enforcing strong policies."
