#!/usr/bin/env bash
if [[ -f /usr/bin/java ]]; then
	echo "Java is already installed."
	exit 0
fi

echo "Installing JRE & JDK"

# Install prerequisites.
sudo apt-get install -y python-software-properties debconf-utils &>/dev/null

# Install Java.
sudo apt-get install -y default-jre default-jdk
