#!/bin/sh

ls -al

ECHO "Downloading Kindlegen"
wget https://archive.org/download/kindlegen_linux_2_6_i386_v2_9/kindlegen_linux_2.6_i386_v2_9.tar.gz 

ECHO "Extracting Kindlegen binary to /usr/local/bin/"
tar xzf kindlegen_linux_2.6_i386_v2_9.tar.gz -C /usr/local/bin kindlegen

ECHO "Removing Kindlegen tar file"
rm kindlegen_linux_2.6_i386_v2_9.tar.gz