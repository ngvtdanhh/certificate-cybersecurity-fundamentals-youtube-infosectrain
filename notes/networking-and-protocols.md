# 🌐 Networking & Protocols – Fundamentals

Understanding computer networks is essential for cybersecurity. This note summarizes key networking concepts used in both attack and defense.

## 🔌 1. OSI Model & TCP/IP

| Layer (OSI) | Function               | Protocols             |
|-------------|------------------------|------------------------|
| 7 – App     | User-facing services   | HTTP, FTP, DNS        |
| 6 – Pres    | Data format, encryption| SSL/TLS               |
| 5 – Sess    | Session handling       | NetBIOS, RPC          |
| 4 – Trans   | Reliable delivery      | TCP, UDP              |
| 3 – Netw    | Routing, addressing    | IP, ICMP              |
| 2 – DataLnk | MAC, switching         | ARP, Ethernet         |
| 1 – Phys    | Transmission medium    | Cables, Wi-Fi         |

## 📡 2. Key Protocols

- **TCP (3-way handshake)**  
- **UDP (stateless)** – often used in DDoS attacks  
- **ICMP** – Ping sweeps and scanning  
- **ARP Spoofing** – Man-in-the-Middle (MITM) technique  
- **DNS Hijacking** – Redirecting victim traffic  

## 🔎 3. Packet Analysis Tools

- `tcpdump`, `Wireshark`, `nmap`
- Understand flags: SYN, ACK, FIN, RST

---
