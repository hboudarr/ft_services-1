#! /bin/sh

openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -newkey rsa:2048 -keyout /etc/vsftpd/ssl/vsftpd.key -out /etc/vsftpd/ssl/vsftpd.crt
sleep 5

chown "nobody:nogroup" /home/hherin/ftp
chown "hherin:hherin" /home/hherin/ftp/files

# test file for download
echo "this is a test file" > /home/hherin/test.txt

/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf &

while true
	do
		sleep 1000;
	done