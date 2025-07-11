# 🔐 Authentication & Encryption

This note covers the foundation of securing data through authentication and cryptography.

## 🔐 1. Authentication Types

- **Something you know** – Password, PIN  
- **Something you have** – OTP, token  
- **Something you are** – Biometrics (fingerprint, face)

> 🔑 MFA combines at least 2 of the above factors.

## 🔒 2. Encryption Basics

| Type        | Description             | Examples               |
|-------------|--------------------------|------------------------|
| Symmetric   | Same key for all         | AES, DES, Blowfish     |
| Asymmetric  | Public/private key pair  | RSA, ECC               |
| Hashing     | One-way transformation   | SHA-256, MD5 (⚠️ weak) |

## 🔐 3. Common Use-Cases

- **TLS**: Secure web communications (HTTPS)  
- **PGP/GPG**: Encrypt email contents  
- **Password storage**: Use salted hashes (e.g., bcrypt)

## 🧪 Tools

- `openssl`, `gpg`, `hashcat`, `john`
---
