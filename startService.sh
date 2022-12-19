#!/bin/bash
<< EOF
Author  : Mohamed Faizal
Email   : iamfaizaljafer@gmail.com
EOF

read -p "Which service would you like to start?: " sname

# Get userID and UserName
uname=$(id -un)
uid=$(id -u)

if which $sname &> /dev/null
then
    echo "Checking for permissions"
else

echo "Service is not installed"
exit 1
fi
# Check if the user has sudo permission to start the service

if [[ $uid -ne 0 ]]
then
    if [[ $(sudo -v) -ne 0 ]]
    then
        echo "$uname does not have enough permissions"
    fi
else
    if [[ $(systemctl status $sname | awk '/Active/ {print $2}') == 'active' ]]
    then
        echo "Docker is already up and running"
    else
        echo "Starting $sname ................"
        systemctl start $sname
        echo "$sname has been started successfully"
    fi
fi
