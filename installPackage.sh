#!/bin/bash
<< EOF
Author  : Mohamed Faizal
Email   : iamfaizaljafer@gmail.com
EOF

# Check if user has sudo permissions

if [[ $(id -u) -ne 0 ]]
then
        echo "Please run a script with sudo previliges"
       exit 1
fi

if [[ $# -eq 0 ]]
then
        echo "Usage: ./script package1 package2 ... "
fi

for x in $@
do
        if which $x &> /dev/null
        then
                echo "$x is already installed."
        else
                echo "Installing package."
                yum install $x -y &> /dev/null
                if [[ $? -eq 0 ]]
                then
                        echo "$x has been installed successfully"
                else
                        echo "Unable to install $x"
                fi
        fi
done
