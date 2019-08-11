#!/bin/bash
SRC_URL=https://en.wikipedia.org/wiki/Messier_87
# Look for instances of the phrase "Black Hole" in the URL, and format the output
# fold - constrains line width
# grep - Highlight matches and show line numbers of matches
curl $SRC_URL | fold | grep --color -n "Black Hole"
# curl $SRC_URL | less "Black Hole"