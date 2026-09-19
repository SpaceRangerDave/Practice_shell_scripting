#!/bin/sh

mkdir students_directory
touch students_directory/Cohort-1.txt
touch students_directory/Cohort-2.txt
touch students_directory/Cohort-3.txt

if [ -d "students_directory" ]; then
    echo "Misson Accomplished"
else
    echo "Mission Failed"
fi

