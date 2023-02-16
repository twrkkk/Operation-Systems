#!/bin/bash

count=`find . -maxdepth 1 -type d -name ".*" |wc -l`
echo "$count"
