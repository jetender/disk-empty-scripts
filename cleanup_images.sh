#!/bin/bash

BASE_DIR="/media/vdata"

echo "Starting cleanup in: $BASE_DIR"

# Delete .jpg and .jpeg files older than 30 days
echo "Deleting .jpg and .jpeg files older than 30 days..."
find "$BASE_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" \) -mtime +27 -exec rm -v {} \;
