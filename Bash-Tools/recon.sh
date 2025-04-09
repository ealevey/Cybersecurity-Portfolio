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
