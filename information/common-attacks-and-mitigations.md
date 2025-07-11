# 🚨 Common Cyberattacks and Mitigations

This file summarizes frequent attack types, their mechanics, and practical defenses. Useful for both red team and blue team learners.

---

## 🕵️‍♂️ 1. Phishing

- **Description**: Fraudulent emails trick users into giving credentials or clicking malicious links.
- **Defense**:
  - Email filtering (SPF/DKIM/DMARC)
  - Security awareness training
  - MFA to limit post-compromise damage

---

## 🛠️ 2. SQL Injection (SQLi)

- **Description**: Injecting malicious SQL to read or modify DB data.
- **Defense**:
  - Use parameterized queries (e.g., `PreparedStatement`)
  - Input validation
  - WAF

---

## 🌐 3. Cross-Site Scripting (XSS)

- **Description**: Injecting JavaScript into webpages to steal cookies/session tokens.
- **Defense**:
  - Contextual output encoding (HTML, JS, URL)
  - Content Security Policy (CSP)
  - Sanitize user inputs

---

## 🔓 4. Brute Force / Credential Stuffing

- **Description**: Automated attempts to guess passwords using leaked credentials.
- **Defense**:
  - Rate-limiting login attempts
  - Captcha
  - Account lockout thresholds
  - Passwordless auth (e.g., passkeys)

---

## 📦 5. Misconfigurations

- **Description**: Exposed services, default creds, open S3 buckets
- **Defense**:
  - Regular security audits
  - Automated scanners (ScoutSuite, Lynis)
  - Cloud security posture management (CSPM)

---

> 🎓 Pro Tip: Always layer defenses – technical, procedural, and human-level – for stronger security.
