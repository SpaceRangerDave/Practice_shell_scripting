#!/bin/bash

read -p "Enter the file you want to audit:" file

if [ -e "$file" ]; then
    echo "The file exists"

    if [ "$(stat -c '%a' "$file")" = "640"  ]; then
       echo "The file has the correct permission value"
    else
       chmod 640 "$file" 
       echo "The file has been give the correct permission value"
    fi

    if [ "$(stat -c '%U' "$file")" = "admin"  ]; then
       echo "The file has the corrcet admin"
    else
       chown admin "$file"
       echo "The file has been given the correct admin"
    fi

    if [ "$(stat -c '%G' "$file")" = "web-admin"  ]; then
       echo "The file has the correct group"
    else
       chown :web-admin "$file"
       echo "The file has been given the correct group"
    fi

else
   echo "The file doesn't exist"
fi
