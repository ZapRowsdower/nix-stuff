#!/bin/bash
# This script sets some useful utilities, aliases, and other defaults for bash shells via a custom .bashrc file
cd "$(dirname "$0")" &&
if [ -f ~/.bashrc ]
then
    echo ".bashrc already exists!"
else
    cat ../configs/bash/bashrc-rouat-linux > ~/.bashrc
    echo ".bashrc set:"
fi
cat ~/.bashrc