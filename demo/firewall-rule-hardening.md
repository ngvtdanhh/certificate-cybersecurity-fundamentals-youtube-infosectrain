# 🔥 Firewall Rule Hardening – Lab Walkthrough

## 🧱 Scenario

We have a basic Linux server hosting a web app. We'll harden iptables firewall to reduce attack surface.

## ⚙️ Initial Rules (Too Permissive)

```bash
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -j ACCEPT  # ❌ Accepts everything else
```

## 🔐 Hardened Rules

```bash
# Default deny policy
iptables -P INPUT DROP

# Allow loopback
iptables -A INPUT -i lo -j ACCEPT

# Allow established connections
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# Allow SSH from specific IP
iptables -A INPUT -p tcp -s 192.168.1.10 --dport 22 -j ACCEPT

# Allow HTTP from anywhere
iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Log dropped packets
iptables -A INPUT -j LOG --log-prefix "Dropped: "
```

## 📌 Key Learnings

- Deny by default, allow by need

- Minimize IP exposure

- Logging helps identify blocked threats


