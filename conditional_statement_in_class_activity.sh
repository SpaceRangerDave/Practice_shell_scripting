#!/bin/bash

read -p "Enter the name of the Directory:" dir_name

if [ -e "$dir_name" ]; then
   echo "$dir_name already exists as a folder or file"

   if [ -f "$dir_name/submission1.txt" ]; then
       echo "submission1.txt already exists"
   else
      touch "$dir_name/submission1.txt"
   fi

   if [ -f "$dir_name/submission2.txt" ]; then
       echo "submission2.txt already exists"
   else
      touch "$dir_name/submission2.txt"
   fi

else
   mkdir "$dir_name"
   touch "$dir_name/submission1.txt"
   touch "$dir_name/submission2.txt"
fi
