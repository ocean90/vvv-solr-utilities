#!/usr/bin/env bash
if [[ -f /usr/bin/java ]]; then
	echo "Java is already installed."
	exit 0
fi

echo "Installing Java 9"

# Install prerequisites.
sudo apt-get install -y python-software-properties debconf-utils &>/dev/null

# Licensing.
echo "Installing this utility means you have AGREED to the Oracle Binary Code"
echo "License Agreement for Java SE at"
echo "http://www.oracle.com/technetwork/java/javase/terms/license/index.html"
echo "oracle-java9-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections

# Install Java.
sudo apt-get install -y default-jre default-jdk
