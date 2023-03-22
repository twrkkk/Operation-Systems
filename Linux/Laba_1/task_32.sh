#!/bin/bash

mkdir -p var/log

app_name=$1
read -p "Enter your surname: " surname

log_file="var/log/$surname.log"
touch "$log_file"
chmod g+wx "$log_file"

grep -ril $app_name ~/var/log/ > $log_file

