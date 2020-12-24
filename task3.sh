#!/bin/bash

NAME=$1
TEXT=$2
REPEAT=$3

if [[ -e $NAME ]]; then
    echo "Error: File $NAME already exists"
    exit
fi

echo "$TEXT" > $NAME
for (( i = 1; i < $REPEAT; i++ )); do
    echo "$TEXT" >> $NAME
done

