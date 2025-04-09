#!/bin/bash
# backup.sh - Folder backup script

if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/folder"
  exit 1
fi

FOLDER=$1
DATE=$(date +%Y%m%d_%H%M%S)
ARCHIVE="backup_$(basename $FOLDER)_$DATE.tar.gz"

tar -czf $ARCHIVE $FOLDER

echo "[+] Backup saved as $ARCHIVE"
