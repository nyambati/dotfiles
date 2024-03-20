#!/bin/sh

# exit immediately if password-manager-binary is already in $PATH
if ! command -v brew > /dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


if ! command -v op > /dev/null 2>&1; then
    brew install --cask 1password
    brew install 1password-cli
fi
