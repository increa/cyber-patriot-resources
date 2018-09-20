#! /bin/bash
#
# nixbadusers.sh
#
# Create a separate file called "authorizedusers.txt" and list the names, 1 per line.
# Then run this script and you'll be prompted to delete unauthorized users, one at a time.


echo "Enter password if prompted."
sudo echo "Password received."

cat /etc/passwd
