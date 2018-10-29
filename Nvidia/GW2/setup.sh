#!/bin/bash
echo "DISCLAIMER - This script will autoconfigure Guild Wars 2 for first time setup. If you already have the game downloaded on your system it will not modify or remove any existing files, this version of WINE is running entirely in a portable setup. At the end of this script there is information provided on how to move your existing Guild Wars 2 data into this version of WINE."
echo " "
sleep 30s
echo "Setup will automatically start in 20 seconds, you can cancel this by pressing 'Ctrl+C'."
sleep 20s
echo " "
sleep 2s
echo "1) Downloading the Guild Wars 2 client."
sleep 1s
echo " "
wget "https://account.arena.net/content/download/gw2/win/64";
echo " "
echo "Creating Shader Cache Folder"
echo " "
mkdir ~/.local/share/gw2_shaders
sleep 2s
echo "2) Setting up the final pieces."
mv ./64 "./data/drive_c/GW2/GW2.exe"
sleep 2s
echo " "
echo "3) Setup is complete, you can now run the game using the provided 'play.sh' file."
echo " "
sleep 2s
echo "4) (Optional) Guide - How to migrate your existing Guild Wars 2 data files."
echo " "
echo "If you already have Guild Wars 2 on your system and wish to play it in this version of WINE, locate your current installation and move (or copy) all the contents into '`pwd`/data/drive_c/GW2', the exe of the game must be renamed to 'GW2.exe' if it isn't so already."
echo " "
sleep 2s
echo "End of Setup."

