#!/bin/bash

# Colors
BLUE="\033[34m"
YELLOW="\033[33m"
GREEN="\033[32m"
RED="\033[31m"
RESET="\033[0m"

# Display options
echo -e "${BLUE}Enter${RESET} ${YELLOW}1${RESET} ${BLUE}for manual IP configuration${RESET}"
echo -e "${BLUE}Enter${RESET} ${YELLOW}2${RESET} ${BLUE}for DHCP${RESET}"

# Get user input
read -p "Your choice: " choice

# Perform the action based on the user's choice
if [[ "$choice" == "1" ]]; then
    if cp ~/networking/static/rc.inet1.conf /etc/rc.d/rc.inet1.conf; then
        echo -e "${GREEN}Success"
        # Restart the network service for manual IP
        /etc/rc.d/rc.M
    else
        echo -e "${RED}Error"
    fi
elif [[ "$choice" == "2" ]]; then
    if cp ~/networking/dhcp/rc.inet1.conf /etc/rc.d/rc.inet1.conf; then
        echo -e "${GREEN}Success"
        # Restart the network service for DHCP
        /etc/rc.d/rc.M
    else
        echo -e "${RED}Error"
    fi
else
    echo -e "${RED}Invalid choice. Please run the script again."
fi

# Reset terminal colors
echo -e "${RESET}"
