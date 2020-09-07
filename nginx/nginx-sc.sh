openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
nginx
ssh-keygen -A
adduser -D hherin
echo hherin:hh | chpasswd
/usr/sbin/sshd
while true
	do
		sleep 1000;
	done