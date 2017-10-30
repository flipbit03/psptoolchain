#!/bin/bash

set -e

if [ -d /etc/profile.d/ ] && [ "$(id -u)" -eq "0" ];
then
	echo "export PSPDEV=$PSPDEV" > /etc/profile.d/psptoolchain.sh
	echo "export PATH=\$PATH:\$PSPDEV/bin" >> /etc/profile.d/psptoolchain.sh
	echo "$PSPDEV/bin added to your systems login scripts!"
else
	echo "--------------------------------------"
	echo "Remember to add these two lines to your local .profile:"
	echo ""
	echo "export PSPDEV=$PSPDEV"
	echo "export PATH=\$PATH:\$PSPDEV/bin"
	echo "--------------------------------------"
fi
