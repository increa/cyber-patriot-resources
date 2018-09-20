#! /bin/bash
# set -x
#
# usage - create the kernelsettings.txt file and it will be appended to the sysctl.conf and enacted
# 
# Sudo doesn't operate on >> commands, so can't just append the parameters into the file; need to
# let sudo elevate the tee command, which then appends the text.  If you don't want to see the parameters
# when they're enabled,  you could copy the file to the /tmp/ directory, edit it there, and
# then put it back in /etc.
#
sudo cp /etc/sysctl.conf /etc/sysctl.conf.bak
cat kernelsettings.txt | sudo tee -a /etc/sysctl.conf
echo "Kernel parameters installed into the config file.  Want to enable all parameters, remove them, or do nothing more?"
select ern in "Enable" "Remove" "Nothing"; do
	case $ern in
		Enable ) sudo sysctl -p; echo "Kernel parameters enabled."; break;;
		Remove ) sudo cp /etc/sysctl.conf.bak /etc/sysctrl.con; echo "Removed."; break;;
		Nothing ) exit;;
	esac
done


