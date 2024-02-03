#!/bin/bash


echo "name of background picture:"
read backgroundName
basePath="/$backgroundName"
formats=("jpg" "jpeg" "png")
for format in "${formats[@]}"; do
    backgroundPath="$basePath.$format"
    if [ -f "$backgroundPath" ]; then
        osascript -e 'tell application "Finder" to set desktop picture to POSIX file "'$backgroundPath'"'
        echo "Background changed to: $backgroundPath"
        exit 0
    fi
done

echo "file not found: $basePath.{jpg,jpeg,png}"
