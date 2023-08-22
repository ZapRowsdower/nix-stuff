#!/bin/sh

echo "Getting Java!"
brew install openjdk@11 &&
echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> $HOME/.profile
