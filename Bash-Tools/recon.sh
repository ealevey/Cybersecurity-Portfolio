#!/bin/bash
# recon.sh - Basic recon automation script

if [ -z "$1" ]; then
  echo "Usage: $0 <domain>"
  exit 1
fi

DOMAIN=$1

echo "[+] Running WHOIS..."
whois $DOMAIN | head -20

echo "[+] Running DIG..."
dig $DOMAIN +short

echo "[+] Running NSLOOKUP..."
nslookup $DOMAIN

echo "[+] Running HOST..."
host $DOMAIN

echo "[+] Recon complete."
