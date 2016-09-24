#!/usr/bin/env bash

# Get the computr's name
name=$1

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the installation has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
    echo "  Installing Homebrew for you."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install apps using brew
echo " Installing apps using brew."
source ./brew.sh

# Set macos defaults
echo " Configuring the system."
source ./.macos

exit 0