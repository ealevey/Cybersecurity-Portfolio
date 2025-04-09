# 🛠️ Bash Tools Collection

This folder contains three scripts. These are all Bash Scripts as tools, one is a cybersecurity task, one is for system maintenence, and lastly the third one is for automation.

```text
/Bash-Tools/
├── recon.sh       # Basic recon tool using whois, dig, etc.
├── cleaner.sh     # Disk cleanup utility
├── backup.sh      # Folder backup with timestamped archive
└── README.md      # This file
```

---

## 🔍 recon.sh – Basic Recon Automation

Runs a set of recon commands on a given domain.

**Tools used:** `whois`, `nslookup`, `dig`, `host`

```bash
bash recon.sh example.com
```
[Recon.sh can be found here](/Bash-Tools/recon.sh)
---

## 🧹 cleaner.sh – Disk Cleanup Script

Deletes common temp folders and clears apt cache.

```bash
bash cleaner.sh
```
[Cleaner.sh can be found here](/Bash-Tools/cleaner.sh)
---

## 🛡️ backup.sh – Folder Backup Utility

Compresses a folder into a `.tar.gz` archive with a timestamp.

```bash
bash backup.sh /path/to/folder
```
[Backup.sh can be found here](/Bash-Tools//backup.sh)
---

## 📄 Notes

- Scripts tested on Ubuntu 22.04
- No sudo required unless noted
- Add `chmod +x script.sh` to make them executable
