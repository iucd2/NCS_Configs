#!/bin/bash

IP=$1

if [ -z "$IP" ]; then
  echo "No IP provided. Exiting."
  exit 1
fi

# Block the IP using UFW
echo "Blocking IP: $IP"
sudo ufw deny from $IP
sudo ufw reload
