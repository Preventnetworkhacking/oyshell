#!/bin/bash
echo "[i] We will now install OyShell to your bin path..."
if [ -d "/usr/share/OyShell" ] ; then
    echo "[i] Found an old version of OyShell, proceeding to update..."
    echo "[i] Backing up old verison."
    if [ -d "/usr/share/OyShell/Backup" ] ; then
        sudo mv /usr/share/OyShell/Backup ./Backup
    else
        mkdir ./Backup
    fi
    name="./Backup/OyShell"
    if [ -d $name ] ; then
        i=0
        while [ -d "$name.bak$i" ] ; do
            let i++
        done
            name="$name.bak$i"
    fi
    sudo mv /usr/share/OyShell $name
    mv ./Backup ./OyShell/
    sudo cp -ar ./OyShell /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making OyShell executable..."
    sudo mv /usr/share/OyShell/main.py /usr/share/OyShell/rst
    sudo chmod +x /usr/share/OyShell/rst
    sudo ln -s /usr/share/OyShell/rst /usr/bin/rst || echo "[i] Link already seems to exist."
else
    sudo cp -ar ./OyShell /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making OyShell executable..."
    sudo mv /usr/share/OyShell/main.py /usr/share/OyShell/rst
    sudo chmod +x /usr/share/OyShell/rst
    sudo ln -s /usr/share/OyShell/rst /usr/bin/rst || echo "[i] Link already seems to exist."
fi

echo "[i] You can delete the OyShell folder now."
echo "----------------------------------------"
echo "[i] Run 'sudo rst' to start OyShell."
echo "----------------------------------------"
exit 0
