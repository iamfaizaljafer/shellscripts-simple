#!/bin/bash

du=$(df -h | grep /dev/xvda1 | awk '{ print $5}' | sed s/%//g)

if [[ du -gt 80 ]]
then
        echo "Disk usage is high: $du"
else
        echo "Disk usage is Normal: $du"
fi
