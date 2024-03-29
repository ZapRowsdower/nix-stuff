# I must extract the password from a readme file and use it for another ssh call
echo "Password is bandit0"
ssh bandit0@bandit.labs.overthewire.org -p 2220 \
cat readme > level-1-pword.txt &&
echo "Done! The password is:";
export SSHPASS=$(cat ./level-1-pword.txt) &&
# Now get sshpass to easily pass the password to the next ssh session w/o user input
sudo apt install -y sshpass && 
# Now login to the next area and use the password from the file
sshpass -f ./level-1-pword.txt ssh bandit1@bandit.labs.overthewire.org -p 2220
