#!/usr/bin/env bash

i=0

until [ $i -ge 5 ]; do
    echo "i is $i"
    i=$((i + 1))
done

