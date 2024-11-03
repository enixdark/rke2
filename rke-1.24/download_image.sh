#!/bin/bash
 
# Path to the text file
FILE="rke2-images-all.linux-amd64.txt"
 
# Read the file line by line
while IFS= read -r image
do
    echo "Pulling $image..."
    docker pull "$image"
done < "$FILE"