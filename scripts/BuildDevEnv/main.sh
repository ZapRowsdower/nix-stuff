#!/bin/bash

# Windows WSL is missing things like gcc needed for homebrew installs so run the following:
# sudo apt-get update
# sudo apt-get install build-essential

# Navigate to current directory and store this location to switch back to later
cd "${0%/*}"
CURR_DIR=$(pwd)

# Get crossplatform (Mac, Linux) package manager
# source getBrew.sh &&
# source getGit.sh &&

# Since we installed brew in the user home dir to avoid sudo, make sure we're back in this dir
cd $CURR_DIR

# Get the latest node.js + npm binaries
source getNodeJs.sh &&
source getJava.sh &&
source getMaven.sh &&
# Get a mongo db cli/shell (incase you don't have studio 3t)
source getMongosh.sh &&
# Gets and installs visual studio code IDE
source getVsCode.sh &

# Make sure any brew installed binaries get precedence over matching usr/bin versions
echo "export PATH=\"${HOME}/homebrew/bin/:$PATH\"" >> $HOME/.profile
