#!/bin/sh

if [ -d "$HOME/Documents/assignment_dir" ]; then
    echo "The directory exists"
    rmdir "$HOME/Documents/assignment_dir"
    echo "The directory has been nerfed"
else
    echo "The directory does not exist."
fi
