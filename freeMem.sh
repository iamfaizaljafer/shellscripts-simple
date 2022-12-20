#!/bin/bash

<< EOF 
Author  : Mohamed Faizal
Email   : iamfaizaljafer@gmail.com
EOF

# Set the threshold value for the memory usage below which we need to alret.
t=300

mem_val=$(free -mt | awk '/Total/ {print $4}') 

if [[ mem_val -lt $t ]]
then
        echo -e "We are short on Memory!!! \n Free memory is: $mem_val "
fi
