# Prints all the colors and their ANSI code's which are available to this terminal
# From: https://unix.stackexchange.com/a/438357
echo "--------------------"
echo "All Available Colors"
echo "--------------------"
for c in {0..255}; do tput setaf $c; tput setaf $c | cat -v; echo =$c; done | column
tput sgr0
echo " "
echo "------------------"
# To see the basic 8 colors available:
echo "Simple Colors"
echo "------------------"
printf '\e[%sm ' {40..47} 0; echo