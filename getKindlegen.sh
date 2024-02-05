#!/bin/sh

ls -al

echo "Downloading Kindlegen"
wget https://archive.org/download/kindlegen_linux_2_6_i386_v2_9/kindlegen_linux_2.6_i386_v2_9.tar.gz 

echo "Extracting Kindlegen binary to /usr/local/bin/"
tar xzf kindlegen_linux_2.6_i386_v2_9.tar.gz kindlegen

echo "Making executable"
chmod +x /app/kindlegen

echo "Removing Kindlegen tar file"
rm kindlegen_linux_2.6_i386_v2_9.tar.gz