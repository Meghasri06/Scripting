#!/bin/bash

while true
do
echo '-------------------------------------------------------'
echo  "1.Show the current mac address:-- "
echo  "2.Set random vendor MAC of the same kind:--"
echo  "3.Set random vendor MAC of any kind:--"
echo  "4.set random mac:--"
echo  "5.Reset MAC address to its original:--"
echo  "6.Set the mac address manually:--"
echo  "7.exit"
echo "-------------------------------------------------------"


echo -n "Enter your choice!"
read n

case $n in

    1)
    sudo macchanger -s eth0
    ;;

    2)
     sudo macchanger -a eth0
    ;;

    3)
      sudo macchanger -A eth0
    ;;

    4)
       sudo macchanger -r eth0
    ;;

    5)
     sudo macchanger -p eth0
    ;;

    6)
    echo "Enter a mac address:"
    read mac
    sudo macchanger -m $mac eth0
    ;;


    7)
    echo "Bye..."
    exit
    ;;

    *)
    echo "invalid option!!!"
    echo  "choose correct option"

    ;;
esac

done
