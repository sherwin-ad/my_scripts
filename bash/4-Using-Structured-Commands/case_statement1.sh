#!/bin/bash

read -p "Enter a filename: " filename
extension="${filename#*.}"
# Check the file extension

case $extension in
  txt | text | md )
    filetype="Text File"
    ;;
  jpg | jpeg | gif | bmp | png) 
    filetype="Image File"
    ;;
  pdf)
    filetype="PDF Document"
    ;;
  *)
    filetype="Unknown File Type"
    ;;
esac

echo "The file type '$filename' is: $filetype" 