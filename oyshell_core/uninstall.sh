#!/bin/bash
echo "[i] We will now uninstall OyShell..."
echo "[i] This will delete all backups."
sudo rm -i /usr/bin/rst
sudo rm -rf -i /usr/share/OyShell

echo "[i] OyShell sucessfully uninstalled."
exit 0
