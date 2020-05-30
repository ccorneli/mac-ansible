#!/bin/sh


if ! [ -x "$(command -v brew)" ]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi
echo "hello"

exit 1
