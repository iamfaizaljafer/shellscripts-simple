#!/bin/bash
<< EOF
Author : Mohamed Faizal
Mail   : iamfaizaljafer@gmail.com
This is an example of a simple yes or no script
EOF

read -p "Enter (y)es or (n)o" opt

# Convert all upper case to lower.
opt_l=$(echo $opt | tr [:upper:] [:lower:])

case $opt_l in

    	y|yes)
            	echo "Yes!"
            	;;
    	no|n)
            	echo "No!"
            	;;
    	*)
            	echo "Enter a vaild option"
esac

