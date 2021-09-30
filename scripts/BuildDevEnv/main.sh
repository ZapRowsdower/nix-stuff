#!/bin/sh
source ./getGit.sh &&
source ./getBrew.sh &&
source ./getNodeJs.sh &&
source ./getMaven.sh &&
source ./getMongosh.sh &&
source ./getVsCode.sh &&

cat $HOME/.profile >> export PATH="${HOME}/homebrew/bin/:$PATH" 
