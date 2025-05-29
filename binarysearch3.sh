#!/bin/bash

echo "Enter sorted numbers separated by spaces:"
read -a arr

echo "Enter the number to search:"
read target

low=0
high=$((${#arr[@]} - 1))

while [ $low -le $high ]; do
    mid=$(( (low + high) / 2 ))

    if [ ${arr[$mid]} -eq $target ]; then
        echo "$target found at index $mid"
        exit 0  # exit the script after finding
    elif [ ${arr[$mid]} -lt $target ]; then
        low=$((mid + 1))
    else
        high=$((mid - 1))
    fi
done

echo "$target not found"

