#!/bin/bash

mkdir -p usr/bin 
touch 1
mv 1 ~/usr/bin
chmod g+x usr/bin/1

echo "Write surname"; read surname
mkdir -p usr/lib/$surname
touch 2.lib
mv 2.lib ~/usr/lib/$surname

mkdir -p etc/$surname
touch 3.conf
mv 3.conf ~/etc/$surname
echo $(realpath -s $0) > etc/$surname/3.conf
