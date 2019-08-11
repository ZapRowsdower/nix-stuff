#!/bin/bash
# Ensure our working directory is the same as the bash script's location
cd "$(dirname "$0")"
# Create a new package.json from the existing one
cat ../package.json > ../dump/edited-package.json &&
# Edit this new package.json
sed -i 's/nix-stuff/more-nix-stuff/' ../dump/edited-package.json &&
# Display the results of this edit
echo "Edits Made: " && cat ../dump/edited-package.json | grep --color -n more-nix-stuff