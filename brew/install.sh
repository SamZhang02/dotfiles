#!/bin/bash

while read -r package; do
	if [ -n "$package" ]; then
		echo "Installing $package..."
		brew install "$package"
		wait
	fi
done <brew-packages.txt
