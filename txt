#!/bin/bash
#shebang for bourne shell execution
echo "Hello this is yaml"



for file in /etc/config/fstab;
do
        mv "$file" "${fstab%}.txt"
done
