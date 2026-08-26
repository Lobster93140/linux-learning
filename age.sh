#!/bin/bash

echo "How old are you?"
read age

if [ "$age" -ge 18 ]; then
    echo "You are an adult."
else
    echo "You are a minor."
fi
