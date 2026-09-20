#!/bin/bash

read -p "Hello, Whats's Your name?:" person_name
echo "Nice to meet you $person_name !"
echo "$person_name, today we are going to Create a Directory."
read -p "$person_name, please name the Directory:" dir_name

if [ -d "$dir_name" ]; then
    echo "Well $person_name, it appears that $dir_name already exists."
    echo "No problem, next I'm going to check if submission1.txt & submission2.txt already exist $person_name"
    
    if [ -f "$dir_name/submission1.txt" ]; then
        echo "Looks like submission1.txt already exist, $person_name"
    else
        echo "submission1.txt doesn't exist, so I'm going to create it"
        touch "$dir_name/submission1.txt"
    fi

    if [ -f "$dir_name/submission2.txt" ]; then
        echo "Looks like submission2.txt also already exist, $person_name"
    else
        echo "submission2.txt doesn't exist, so I'm going to create it"
        touch "$dir_name/submission2.txt"
    fi

elif [ -e "$dir_name" ]; then
    echo "$person_name, it looks like $dir_name is actually a file and not a Directory"
else
    echo "Creative name choice $person_name, Nothing exists with this $dir_name, so I'll create the Directory and 2 files."
    mkdir "$dir_name"
    touch "$dir_name/submission1.txt"
    touch "$dir_name/submission2.txt"
fi
