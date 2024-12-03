#!/bin/bash

clear

echo "Enter 1 for manual IP configuration"
echo "Enter 2 for DHCP"

read -p "Your choice: " choice

if [[ "$choice" == "1" ]]; then
    if cp /home/networking/static/rc.inet1.conf /etc/rc.d/rc.inet1.conf; then
        echo "Success"
        /etc/rc.d/rc.M
    else
        echo "Error"
    fi
elif [[ "$choice" == "2" ]]; then
    if cp /home/networking/dhcp/rc.inet1.conf /etc/rc.d/rc.inet1.conf; then
        echo "Success"
        /etc/rc.d/rc.M
    else
        echo "Error"
    fi
else
    echo "Invalid choice. Please run the script again."
fi
