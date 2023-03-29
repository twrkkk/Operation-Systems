#!/bin/bash

echo "Enter singer"; read singer;
echo "Enter genre"; read genre;

singers_path="./2/singers/${singer}"
genres_path="./2/genres/${genre}"

ls $singers_path > s.txt
ls $genres_path  > g.txt

grep -F -f s.txt g.txt > r.txt

cat "r.txt"

rm s.txt g.txt r.txt


