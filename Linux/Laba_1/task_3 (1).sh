#!/bin/bash

mkdir -p var/log

read -p "Enter the name of the application: " app_name
read -p "Enter your surname: " surname


log_file="/$surname.log"
touch "$log_file"
sudo chmod -R 777 /

find / -name "$app_name" -print > "$log_file"
