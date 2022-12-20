#!/bin/bash

# Break

for x in $(seq 5)
do
        if [[ x -eq 3 ]]
        then
                break
        else
                echo $x 
        fi
done

# Continue

for x in $(seq 5)
do
        if [[ x -eq 3 ]]
        then
                continue
        else
                echo $x 
        fi
done
