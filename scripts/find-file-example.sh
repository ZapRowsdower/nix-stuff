# Find file from root
echo "Finding files from root"
sudo find / -type f -name "passwd" &&
echo "Finding all .conf files"
sudo find / -type f -name "*.conf"