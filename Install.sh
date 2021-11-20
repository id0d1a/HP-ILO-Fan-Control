#!/bin/bash
echo "You are about to Download/Install the required items for the HP ILO Fan control, "
echo "Do you accept that your are about to install? [yes] or [no] :"
read input
if [ $input = yes ] ; then
# agreement confirmed
# refresh OR create agreement file status
        echo "Installing required apt packages sshpass, lm-sensors and wget"
        apt install sshpass wget -y
        echo "Installed required apt packages"
        cd /
        #echo "Downloading ILO_250 for ROM Upgrade"
        #echo "Downloading to / directory"
        #wget https://github.com/That-Guy-Jack/HP-ILO-Fan-Control/tree/main/Files/ilo_250
        #echo "Finished Download"
        echo "Making autofan.service"
        cd /etc/systemd/system/
        wget https://raw.githubusercontent.com/thomaswilbur/HP-ILO-Fan-Control/main/Files/autofan.service
        echo "Finished making autofan.service"
        echo "Which server are you running? Dl360p 1u (1) or the DL380p 2u (2) [1] or [2] :"
                read server
                if [ $server = 1 ] ; then
                        echo "Preping autofan.sh for DL360p "
                        cd /
                        echo "Downloading Latest autofan.sh"
                        wget https://raw.githubusercontent.com/thomaswilbur/HP-ILO-Fan-Control/main/Files/autofan.sh
                        echo "Downloaded autofan.sh Change Placeholders with correct info"
                        exit 1
                elif [ $server = 2 ] ; then
                        echo "Preping autofan.sh for DL380p "
                        cd /
                        echo "Downloading Latest autofan.sh"
                        wget https://raw.githubusercontent.com/thomaswilbur/HP-ILO-Fan-Control/main/Files/autofan-dl380p-g8.sh
                        echo "Renaming File"
                        mv autofan-dl380p-g8.sh autofan.sh
                        echo "Downloaded autofan.sh Change Placeholders with correct info"
                        exit 1
                fi
else
   echo " :( exitting"
   exit 1
fi
