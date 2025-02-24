#!/bin/bash
# Download OCLP
# This will create a Apple Bundle App Download OCLP
# Copyright (c) 2025 chris1111 All rights reserved.
# by chris1111
# Credit: Apple
# Version "1.0"
# Vars
# Dependencies: osacompile
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"

echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
echo "Create Download OCLP "
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
Sleep 1
# Declare some VARS
APP_NAME="Download OCLP.app"
SOURCE_SCRIPT="Download OCLP.applescript"
rm -rf "$APP_NAME"
Sleep 1
osascript -e 'display notification "Download OCLP " with title "Create"  sound name "default"'
# Create the dir structure
dir=$(cd $(dirname "$1"); pwd)
/usr/bin/osacompile -o "$APP_NAME" "$SOURCE_SCRIPT"
# Copy applet.icns to the right place
cp -rp ./Pics/applet.icns "$APP_NAME"/Contents/Resources/
echo "= = = = = = = = = = = = = = = = = = = = = = = = = 
Download OCLP.app completed
= = = = = = = = = = = = = = = = = = = = = = = = =  "

