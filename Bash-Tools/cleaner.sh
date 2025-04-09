#!/bin/bash
# cleaner.sh - Simple disk cleanup utility

echo "[+] Cleaning APT cache..."
sudo apt clean

echo "[+] Removing thumbnail cache..."
rm -rf ~/.cache/thumbnails/*

echo "[+] Deleting system logs older than 7 days..."
sudo find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;

echo "[+] Cleanup complete."
