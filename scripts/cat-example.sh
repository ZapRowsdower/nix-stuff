#!/bin/bash
# Ensure our working directory is the same as the bash script's location
cd "$(dirname "$0")" &&
# cat Example:
# Create 2 files 'hello' and 'world'. hello.txt contains 'hello'. world.txt contains 'world'
cd ../dump &&
echo "hello" > hello.txt; echo "world" > world.txt &&
cat hello.txt && # prints 'hello'
cat world.txt && # prints 'world'
# cat hello.txt world.txt && # prints 'hello' & prints 'world'
cat hello.txt world.txt > helloworld.txt && # creates new file 'helloworld.txt' with the contents 'hello world'
echo "Contents of helloworld.txt:"; cat helloworld.txt