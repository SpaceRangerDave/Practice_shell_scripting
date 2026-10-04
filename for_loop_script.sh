#!/usr/bin/env bash

for i in *.xml; do
    cp "$i" "$i".bak
    echo "Backed up $i"
done
