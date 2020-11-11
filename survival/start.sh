#!/bin/bash

memory="2048"
server="paper-262.jar"

echo "======== SMPExeter Minecraft Server ========"
echo "Initialising SMPExeter server start-up."
echo "Server binary: "$server
echo "Allocated RAM: "$memory"MB"
echo "--------------------------------------------"

echo "eula=true" > eula.txt

if [ -e $server ]
then 
    echo "Found: "$server
    minimumsize=128000
    actualsize=$(wc -c <"$server")
    if [ $actualsize -lt $minimumsize ]
    then
        echo $server" does not appear to be a valid binary."
    else
        echo "Launching Minecraft server."
        java -Xms1024M -Xmx"$memory"M -jar "$server" nogui
    fi
else
    echo "Could not find: "$server
fi
