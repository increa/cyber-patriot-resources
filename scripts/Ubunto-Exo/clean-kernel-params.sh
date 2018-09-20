#! /bin/bash
echo "Edit what you want, save the file, exit the editor.  Sysctl.conf will be put back into /etc/"
set -x
#
cp /etc/sysctl.conf /tmp/
gedit /tmp/sysctl.conf
sudo cp /tmp/sysctl.conf /etc/

