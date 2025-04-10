# 🛠️ Bash Tools Collection
Welcome to my collection of Bash tools, these projects are more cybersecurity oriented than my Python scripts which are more for general usage. There are also downloadable scripts in here as well but the code will be posted.

---

## Table of Contents
1. [Recon.sh](#reconsh-can-be-found-here)
2. [Cleaner.sh](#cleanersh-can-be-found-here)
3. [Backup.sh](#backupsh-can-be-found-here)

---

### 1. **Recon.sh – Basic Recon Automation**

**Description**
A Bash script for automating reconnaissance tasks, including domain information gathering, DNS lookups, and network scanning. Integrates various tools to collect data on IPs, ports, and WHOIS information, with output formatted for easy analysis.

**Tools used:** `whois`, `nslookup`, `dig`, `host`

**Skills Demonstrated:**
- Bash scripting and automation
- Network scanning and data gathering
- Tool integration
- File handling and output formatting

**Code:**
```bash
bash recon.sh example.com
#!/bin/bash
# recon.sh - Basic recon automation script

if [ -z "$1" ]; then
  echo "Usage: $0 <domain>"
  exit 1
fi

DOMAIN=$1

echo "[+] Running WHOIS..."
whois $DOMAIN | head -20
#running whois on the domain
echo "[+] Running DIG..."
dig $DOMAIN +short
#running dig on the domain
echo "[+] Running NSLOOKUP..."
nslookup $DOMAIN
#NSLookup on the domain
echo "[+] Running HOST..."
host $DOMAIN
#running host on the domain
echo "[+] Recon complete."
```
[Recon.sh can be found here](/Bash-Tools/recon.sh)
---

### 2. **Cleaner.sh – Disk Cleanup Script**


**Description:**
A Bash script designed to automate system cleanup tasks, including clearing temporary files, logs, and cache. Helps maintain system performance by freeing up disk space and ensuring smooth operation.

**Tools used:** `rm` , `find` , `mkdir` , `echo`

**Skills Demonstrated:**
- Bash scripting for system maintenance
- File management and cleanup
- Automation of routine system tasks

```bash
bash cleaner.sh
#!/bin/bash
# cleaner.sh - Simple disk cleanup utility

echo "[+] Cleaning APT cache..."
sudo apt clean
#command to clean
echo "[+] Removing thumbnail cache..."
rm -rf ~/.cache/thumbnails/*
#command to remove thumbnails with -rf to completely delete files and directories
echo "[+] Deleting system logs older than 7 days..."
sudo find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;

echo "[+] Cleanup complete."
```
[Cleaner.sh can be found here](/Bash-Tools/cleaner.sh)
---

### 3. **Backup.sh – Folder Backup Utility**

**Description**
Backup.sh is a Bash script designed to automate the process of creating backups of important files or directories. It allows users to specify source directories and backup destinations, making it easier to manage data safety. The script can copy files, create compressed archives, or sync directories to ensure a reliable and up-to-date backup system. Whether for personal or project use, this script streamlines backup tasks, ensuring data integrity and security.

**Tools used:** `cp` , `rsync` , `mkdir` , `tar` , `echo`

**Skills Demonstarted:**
- File Management
- Data Backup
- Error Handling
- Cron Jobs (if added to cron)

```bash
bash backup.sh /path/to/folder
#!/bin/bash
# backup.sh - Folder backup script
# if loop for usage of folder
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/folder"
  exit 1
fi

FOLDER=$1
#if loop to check if folder exists, if not it gives an error message
if [ ! -d "$FOLDER" ]; then
  echo "Error: $FOLDER does not exist or is not a directory."
  exit 2
fi

DATE=$(date +%Y%m%d_%H%M%S)
ARCHIVE="backup_$(basename "$FOLDER")_$DATE.tar.gz"

tar -czf  "$ARCHIVE" "$FOLDER"
#tarball for archiving the folder
echo "[+] Backup saved as $ARCHIVE"
```
[Backup.sh can be found here](/Bash-Tools//backup.sh)
**If adding a Cron job (OPTIONAL)**
To add to Cron Jobs: (This example will be for midnight)
- Download Backup.sh, in your terminal do [chmod +x /path/to/backup.sh]
- [crontab -e] (This will open your crontab file)
- In your file add [0 0 * * * /path/to/backup.sh /path/to/folder]
- Save and quit
- Optional: Check your cron logs, [grep CRON /var/log/syslog]

Other use cases:
- Every hour [0 * * * * /path/to/backup.sh /path/to/folder]
- Every Sunday at 2 am [0 2 * * 0 /path/to/backup.sh /path/to/folder]
---

## 📄 Notes

- Scripts tested on Ubuntu 22.04
- No sudo required unless noted
- Add `chmod +x script.sh` to make them executable
