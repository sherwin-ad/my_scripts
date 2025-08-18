#!/bin/bash
# Shell script that processes images.

# This script checks if any arguments are passed. 
if [ $# -eq 0 ]; then
    echo "Usage: $0 [File-1] [File-2] ... [File-n]"
    exit
fi

for i in $@
do
    if [ -f "$i" ]; then
        # Extracting the file name without the extension.
		file_name=`echo $i | sed 's/[.].*//'` # Removing the file extension.
		# Converting the file to PNG format using the 'convert' command.
		magick $i $file_name.png
        echo $file_name 
    else
        echo "Error:$i is not a regular file."
    fi
done

echo "[+] File conversion completed."