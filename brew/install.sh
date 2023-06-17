#!/bin/bash

while read -r package; do
	if [ -n "$package" ]; then
		echo "Installing $package..."
		brew install "$package"
	fi
done <brew-packages.txt
