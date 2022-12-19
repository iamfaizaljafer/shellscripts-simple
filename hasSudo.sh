#!/bin/bash
<< EOF
Author  : Mohamed Faizal
Email   : iamfaizaljafer@gmail.com
EOF

uname=$(id -un)

if [[ $(id -u) -eq 0 ]]
then
    echo "$uname has sudo permissions."
else
    if [[ $(sudo -v) -eq 0 ]]
    then
        echo "$uname has sudo permissions."
    else
        echo "$uname doesnt have sudo permissions"
    fi
fi
