#!/bin/bash

criteria="$1"
filename="$2"

ls -l "$criteria" > "$filename"

echo "cpsc1280week3" >> "$filename"
