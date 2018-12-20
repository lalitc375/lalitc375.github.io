#!/bin/bash
file="/tmp/user-passwords.txt"
while IFS=' ' read  f1 f2
do
adduser $f1;
echo $f1:$f2 | chpasswd;
done <"$file"
