#!/bin/bash

# created by Unknown Person
# IP And MAC Address Chacker

banner(){
banner "##########################################"
banner "##                                      ##"
banner "##      IP And MAC Address Chacker      ##"
banner "##                      		##"
banner "##        Created Unknown Person        ##"
banner "##                                      ##"
banner "#########################################"
}

manu(){
echo "Enter 1 To Check Your IP"
echo "Enter 2 To Check Your MAC Address"
echo "Enter 3 To Check Your IP and MAC Address"
read -p "Selet An Option:" option
}

main(){
ip=$(hostname -I | awk '{print $1}')
mac=$(ip link show eth0 | grep link/ether | awk '{print $2}')

if [ $option == 1 ];
then
	echo "Your Ip Address Is:" $ip

elif [ $option == 2 ];
then
	echo "Your Mac Address Is:" $mac

elif [ $option == 3 ];
then
	echo "Your Ip Address Is:" $ip
	echo "Your Mac Address Is:" $mac

else echo "Wrong Option!"
fi
}


# Function Callad

manu
main
