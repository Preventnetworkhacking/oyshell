# 🐚 OyShell

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.10+-blue?logo=python&logoColor=white">
  <img src="https://img.shields.io/badge/License-MIT-green">
  <img src="https://img.shields.io/badge/Oystra-Security%20Research-purple">
  <img src="https://img.shields.io/badge/Status-Active-brightgreen">
</p>

<p align="center">
  <b>Network Security Research Toolkit</b><br>
  <i>An Oystra security research project</i>
</p>

---

## ⚠️ Legal Disclaimer

**OyShell is designed for authorized security testing and research ONLY.**

By using this software, you agree that:
- You have **explicit written permission** to test the target systems
- You will **not use this tool for malicious purposes**
- You understand that unauthorized network attacks are **illegal** under laws like the CFAA
- You accept **full responsibility** for your actions

> **Responsible Disclosure:** If you discover vulnerabilities using OyShell, please report them responsibly to the affected parties.

---

## 🎯 Purpose

OyShell is a network stress-testing and security research toolkit. It helps security professionals:

- **Test resilience** of networks and services against DoS conditions
- **Understand** how various network protocols behave under load
- **Identify** potential weaknesses in defensive configurations
- **Train** defensive teams (blue teams) with realistic scenarios

---

## 🔧 Features

| Module | Protocol | Use Case |
|--------|----------|----------|
| `l3` | ICMP | Ping flood testing |
| `l4` | TCP/UDP | Transport layer stress tests |
| `l7` | HTTP | Application layer testing |
| `wifi` | IEEE 802.11 | Wireless deauth testing |
| `bl` | L2CAP | Bluetooth device testing |
| `arp` | ARP | ARP spoofing detection |
| `scanner` | TCP/ICMP | Network reconnaissance |

---

## 📦 Installation

### Quick Install (Linux)

```bash
git clone https://github.com/Preventnetworkhacking/oyshell.git
cd oyshell
pip install -r requirements.txt
python main.py
```

### Docker (Recommended)

```bash
docker build -t oyshell .
docker run -it --net=host oyshell
```

### System-Wide Install

```bash
sudo ./install.sh
oyshell  # Run from anywhere
```

---

## 🚀 Quick Start

```bash
# Start OyShell
python main.py

# Inside OyShell:
OyShell> l4          # Load Layer 4 module
OyShell/l4> help     # Show available commands
OyShell/l4> ip <target>
OyShell/l4> port 80
OyShell/l4> threads 10
OyShell/l4> run
```

---

## 📋 Requirements

- Python 3.10+
- Linux (recommended) or macOS
- Root/sudo for certain modules (wifi, arp)

### Dependencies

```
urllib3>=2.0.0
python-nmap>=0.7.1
Flask>=3.0.0
requests>=2.31.0
scapy>=2.5.0
```

---

## 🏗️ Project Structure

```
oyshell/
├── main.py              # Entry point
├── oyshell_core/        # Core modules
│   ├── main.py
│   ├── CLIF_Framework/  # CLI framework
│   └── modules/
│       ├── l3/          # ICMP module
│       ├── l4/          # TCP/UDP module
│       ├── l7/          # HTTP module
│       ├── wifi/        # Wireless module
│       ├── bl/          # Bluetooth module
│       ├── arp/         # ARP module
│       ├── scanner/     # Network scanner
│       └── server/      # Distributed server
├── Dockerfile
├── requirements.txt
└── README.md
```

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Submit a pull request

Please ensure all contributions maintain the tool's ethical focus on security research.

---

## 📜 License

MIT License - see [LICENSE](LICENSE)

---

## 🔗 Links

- **Oystra:** [oystra.ai](https://oystra.ai)
- **Original Project:** Based on [Raven-Storm](https://github.com/Taguar258/Raven-Storm) by Taguar258

---

<p align="center">
  <b>🛡️ Built for defense, not offense 🛡️</b>
</p>
