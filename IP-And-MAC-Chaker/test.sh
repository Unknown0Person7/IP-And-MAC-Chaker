#!/bin/bash

source ./test-1.sh

# Function to get IP address
main(){
get_ip() {
    ip_address=$(hostname -I | awk '{print $1}')
    echo "Your IP address is: $ip_address"
}

# Function to get MAC address
get_mac() {
    mac_address=$(ip link show | awk '/ether/ {print $2}')
    echo "Your MAC address is: $mac_address"
}
}

# Display menu
manu(){
echo "Choose an option:"
echo "1. Check IP address"
echo "2. Check MAC address"
echo "3. Check both IP and MAC address"
read -p "Enter your choice (1/2/3): " choice
}

# Execute based on user choice
choice(){
case $choice in
    1)
        get_ip
        ;;
    2)
        get_mac
        ;;
    3)
        get_ip
        get_mac
        ;;
    *)
        echo "Invalid choice. Please enter 1, 2, or 3."
        ;;
esac
}

main
manu
choice
