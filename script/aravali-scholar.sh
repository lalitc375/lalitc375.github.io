#!/bin/bash
file="/tmp/user-passwords.txt"
while IFS=' ' read  f1 f2
do
adduser --disabled-login --quiet $f1;
echo $f1:$f2 | chpasswd;
done <"$file"
