
#!/bin/bash

BASE_DIR="/media/vdata"

# Delete .avf and .evaf files older than 1 day
echo "Deleting .avf and .evaf files older than 1 day..."
find "$BASE_DIR" -type f \( -iname "*.avf" -o -iname "*.evaf" \) -mtime +1 -exec rm -v {} \;

echo "Cleanup complete."