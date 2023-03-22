#!/bin/bash

mkdir -p var/log

read -p "Enter the name of the application: " app_name
read -p "Enter your surname: " surname

log_file="var/log/$surname.log"
touch "$log_file"
chmod g+wx "$log_file"

grep -ril $app_name ~/var/log/ > $log_file

