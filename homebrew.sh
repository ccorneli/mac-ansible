#!/bin/sh

## Note: this needs to be run as administrator

if ! [ -x "$(command -v brew)" ]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi
echo "== brew installed, checking for updates..."
brew update

brew list --versions bash || brew install bash

PACKAGES=(
	maven
	the_silver_searcher
	wget
	openjdk
	pyenv	
)
echo "== Installing Packages.."

for exe in ${PACKAGES[@]}
do
	echo "== Checking $exe ==========="	
	brew list --versions $exe || brew install $exe
done

CASKS=(
	beyond-compare
	nvalt
	java
	oracle-jdk
	cheatsheet
	iterm2
)

for c in ${CASKS[@]}
do
	echo "== Checking $c ==========="	
	brew cask list --versions $c || brew cask install $c
done



echo "Cleaning up... "
brew cleanup
exit 0 

