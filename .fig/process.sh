#!/bin/bash

# Set the target directory (default is current directory)
TARGET_DIR="${1:-.}"

echo "Compressing JPG and PNG files in: $TARGET_DIR"

# Compress JPG files
find "$TARGET_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" \) -exec jpegoptim --max=80 --strip-all --all-progressive {} \;

# Compress PNG files
find "$TARGET_DIR" -type f -iname "*.png" -exec optipng -o7 {} \;

echo "Compression complete."
