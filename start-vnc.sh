#!/bin/bash

echo 'Updating /etc/hosts file...'
echo $(hostname)
HOSTNAME=$(hostname)
echo "127.0.0.1\t$HOSTNAME" >> /etc/hosts

echo "Starting VNC server at $RESOLUTION..."
vncserver -kill :1 || true
vncserver -geometry $RESOLUTION &

echo "VNC server started at $RESOLUTION! ^-^"

echo "Starting tail -f /dev/null..."