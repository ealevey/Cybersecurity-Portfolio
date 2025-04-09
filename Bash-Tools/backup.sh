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
