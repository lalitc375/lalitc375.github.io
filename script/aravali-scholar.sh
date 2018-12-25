file="/tmp/user-passwords1.txt"
while IFS=' ' read  f1 f2
do
adduser --disabled-login --gecos "" --quiet $f1;
echo $f1:$f2 | chpasswd;
done <"$file"

touch /tmp/lalit123.txt
