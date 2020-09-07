# !bin/sh
/usr/bin/mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
mysqld --user=root &
while true
	do
		sleep 1000;
	done