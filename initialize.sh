#!/bin/bash

for directory in ./*; do
	if [ -d "$directory" ]; then
		if [ -f "$directory/install.sh" ]; then
			echo "Running install.sh in $directory"
			(cd "$directory" && sh install.sh)

			if [ $? -ne 0 ]; then
				echo "Failed to run install.sh in $directory"
			else
				echo "Successfully installed install.sh in $directory"
			fi
		fi
	fi
done
