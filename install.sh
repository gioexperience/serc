#!/bin/bash

USER=$(whoami)

if [ "$USER" != "root" ]; then
	echo "Error. You have to use SUDO for install: sudo ./install.sh"
	exit 0
fi

apt-get install netcat php -y

chmod +x ~/serc/update.sh
echo "installing..."
cp ./source/serc /usr/local/bin/serc
chmod +x /usr/local/bin/serc

echo "Finish"
echo ""

