#!/bin/bash

mkdir -p usr/bin 
touch usr/bin/1
chmod 111 usr/bin/1

echo "Write surname"; read surname
mkdir -p usr/lib/$surname
touch usr/lib/$surname/2.lib

mkdir -p etc/$surname
touch etc/$surname/3.conf
