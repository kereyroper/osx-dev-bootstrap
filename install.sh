#!/usr/bin/env bash

if [ "$(uname)" != "Darwin" ]; then
    exit
fi

if ! which brew &> /dev/null; then
    echo "Installing homebrew"
    ruby -e "$(curl -sSL --ssl-reqd https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing Brew packages"

brew install gpg \
    hub \
    caskroom/cask/brew-cask

brew cask install \
    1password \
    firefox \
    fuze \
    google-chrome \
    hipchat \
    macfusion \
    vagrant \
    virtualbox

curl -sSL --ssl-reqd https://raw.githubusercontent.com/xdissent/ievms/master/ievms.sh | env IEVMS_VERSIONS="9 10 11" bash
