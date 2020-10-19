#!/bin/sh

## Note: first homebrew install needs admin privs to give proper permissions on directories for your account
if ! [ -x "$(command -v brew)" ]; then
  if   id -Gn  | grep -q -w admin ; then
	echo "Admin privs found, doing Brew install..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  else
	echo "Enable admin privs for your account to install homebrew for first time"
	exit 1
   fi
	else 
echo "Homebrew installed"
echo brew info
fi
echo "== brew installed, checking for updates..."

brew update

brew list --versions bash || brew install bash


## Only Ansible needed here to bootstrap
PACKAGES=(
  ansible
)
echo "== Installing Packages.."

for exe in ${PACKAGES[@]}
do
	echo "== Checking $exe ==========="	
	brew list --versions $exe || brew install $exe
done


echo "Cleaning up... "
brew cleanup
brew doctor
exit 0 

