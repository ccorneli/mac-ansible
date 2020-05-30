#!/bin/sh

## Note: first homebrew install needs admin privs to give proper permissions on directories for your account
if ! [ -x "$(command -v brew)" ]; then
  if   id -Gn  | grep -q -w admin ; then
	echo "Admin privs found, doing Brew install..."
  else
	echo "Enable admin privs for your account to install homebrew for first time"
	exit 1
   fi
fi
#	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo "== brew installed, checking for updates..."
exit 1
brew update

brew list --versions bash || brew install bash

PACKAGES=(
	maven
	the_silver_searcher
	wget
	openjdk
	pyenv	
	mas
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

