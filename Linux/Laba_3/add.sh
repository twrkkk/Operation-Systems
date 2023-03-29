#!/bin/bash

echo "Enter path to music"; read music_path
echo "Enter path to links"; read links_path

for catalog in $(ls "${music_path}"); do
path="${music_path}/${catalog}"

author=$(cat "${path}/author.txt");
composer=$(cat "${path}/composer.txt");
genre=$(cat "${path}/genre.txt");
singer=$(cat "${path}/singer.txt");

mkdir -p  "${links_path}/authors/${author}"
mkdir -p "${links_path}/composers/${composer}"
mkdir -p "${links_path}/genres/${genre}"
mkdir -p "${links_path}/singers/${singer}"

mp3_path=$(find ${path} -type f -name "*.mp3")
ln -s $mp3_path "${links_path}/authors/${author}"
ln -s $mp3_path "${links_path}/composers/${composer}"
ln -s $mp3_path "${links_path}/genres/${genre}"
ln -s $mp3_path "${links_path}/singers/${singer}"

done

