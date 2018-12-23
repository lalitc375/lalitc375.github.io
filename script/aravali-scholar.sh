#!/bin/bash
file="/var/aravaliScript/user-passwords.txt"
while IFS=' ' read  f1 f2
do
adduser --disabled-login --gecos "" --quiet $f1;
echo $f1:$f2 | chpasswd;
done <"$file"

touch lalit123.txt
