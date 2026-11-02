---
name: strix
description: Autonomous AI penetration testing and vulnerability scanner. Use when testing code for security vulnerabilities, performing security audits, validating exploits, or running automated pentests on application code and endpoints.
---

# Strix - Autonomous AI Security & Pentesting

Strix is an open-source AI penetration testing tool that dynamically scans applications, detects security vulnerabilities, validates exploits with real proofs-of-concept (PoCs), and provides automated remediation guidance.

## Core Capabilities

- **Vulnerability Scanning & Reconnaissance**: Dynamically analyze target application directories, endpoints, and codebase for OWASP Top 10 vulnerabilities (SQLi, XSS, SSRF, Auth Bypass, Insecure Direct Object References, etc.).
- **Proof-of-Concept Validation**: Validate reported security vulnerabilities with real working exploit payloads rather than false positive static warnings.
- **Auto-remediation Guidance**: Generate actionable security patches and hardening steps for identified vulnerabilities.

## Quick CLI Usage

```bash
# Run security assessment on a target directory
strix --target ./backend

# Run targeted assessment on API routes
strix --target ./backend/routes
```

## Security Audit Checklist for Web Applications

1. **Authentication & Authorization**: Verify JWT token validation, session expiration, and role-based access control (RBAC).
2. **API & Input Sanitization**: Check for SQL/NoSQL Injection, Command Injection, and XSS sanitization.
3. **Sensitive Data Exposure**: Ensure `.env` secrets, master passwords, and JWT secret keys are properly secured and excluded from VCS.
4. **Endpoint Protection**: Check that public webhooks or administrative endpoints enforce rate limiting or authorization keys where appropriate.
