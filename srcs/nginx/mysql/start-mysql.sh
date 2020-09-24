#! /bin/sh
/usr/bin/mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
sleep 5
mysqld --user=root &
sleep 5
mysql -u root < /home/create_tables.sql
while true
	do
		sleep 1000;
	done