#!/usr/bin/env bash

# Set the base directory. You can change this to any directory you want to search.
BASE_DIR="output"

# Check if the base directory exists
if [ ! -d "$BASE_DIR" ]; then
  echo "The directory $BASE_DIR does not exist."
  exit 1
fi

# Loop through the first level of directories
for dir1 in "$BASE_DIR"/*; do
  # Check if the item is a directory
  if [ -d "$dir1" ]; then
        # Loop through the second level of directories
    for dir2 in "$dir1"/*; do
      # Check if the item is a directory
      if [ -d "$dir2" ]; then
        magick $dir2/* $dir2.pdf
      fi
    done
  fi
done