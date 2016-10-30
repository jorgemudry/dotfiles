#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew tap homebrew/versions
brew tap phinze/homebrew-cask
brew tap homebrew/dupes
brew tap caskroom/cask

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew install coreutils
#sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
#brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
#brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
#brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
#brew install bash
#brew install bash-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
# brew install ringojs
# brew install narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
# brew install ack
brew install git
brew install ssh-copy-id
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
brew install pv
brew install rename
# brew install rhino
brew install tree
brew install webkit2png
# brew install zopfli
brew install homebrew/php/php70-mcrypt
# brew install mysql
brew install httpie
brew install mackup
brew install mc

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node010

# Install cask apps
# Internet
brew cask install google-chrome
brew cask install firefox

# Productivity
brew cask install dropbox
brew cask install google-drive
brew cask install evernote
# brew cask install skitch
# brew cask install jumpcut

# Messaging
brew cask install skype
# brew cask install google-hangouts
# brew cask install limechat
# brew cask install telegram
# brew cask install hipchat
brew cask install slack

# Media
brew cask install vlc
brew cask install spotify
#https://github.com/Marginal/QLVideo
brew cask install qlvideo

# File Transfer
brew cask install transmission
# brew cask install utorrent
# brew cask install transmit
brew cask install bittorrent-sync

# Development
brew cask install sequel-pro
brew cask install vagrant
brew cask install sublime-text
brew cask install virtualbox
brew cask install paw
brew cask install medis

# Utilities
brew cask install iterm2
brew cask install the-unarchiver
brew cask install caffeine
brew cask install flux
# brew cask install onepassword
brew cask install coconutbattery
brew cask install spectacle
brew cask install android-file-transfer
# brew cask install cheatsheet
# brew cask install onyx
brew cask install cronnix
brew cask install tunnelbear

# Remove outdated versions from the cellar.
brew cleanup
