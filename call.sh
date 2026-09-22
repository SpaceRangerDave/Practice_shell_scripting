#!/bin/bash

chmod u+x call.sh 
x=Dave
echo $x


if [ -d "Cohorts" ]; then
    echo "The directory Cohorts already exists"
else
    mkdir Cohorts
fi

#git add .
#git commit -m'Updates call.sh Script'
#git push
