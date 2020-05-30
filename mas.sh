#!/bin/sh

## Note: this needs to be run as administrator

if ! [ -x "$(command -v mas)" ]; then
	echo "Error: 'mas' needs to be instlled from homebrew"
	exit 1
fi
mas search 1password7
exit 0 

