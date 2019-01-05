file="/var/aravaliScript/user-passwords.txt"
while IFS=' ' read  f1 f2
do
/usr/sbin/adduser --disabled-login --gecos "" --quiet $f1;
echo $f1:$f2 | /usr/sbin/chpasswd;
sleep 10;
done <"$file"

touch /tmp/lalit123.txt
