#! /bin/sh
/usr/bin/mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
mysqld --user=root &
mariadb < /home/create_tables.sql
mariadb -u root -e "CREATE USER '$PMA_USER'@'%' IDENTIFIED BY '$PMA_USER';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$PMA_USER'@'%' IDENTIFIED BY '$PMA_PWD' WITH GRANT OPTION;"
# mariadb -u root -e "CREATE DATABASE wp1;"
# mariadb -u root -e "USE wp1;"
# mariadb -u root -e "GRANT ALL PRIVILEGES ON wp1.* to '$WRD_USER'@'localhost' IDENTIFIED BY '$WRD_PWD';"
# mariadb -u root -e "FLUSH PRIVILEGES;"
while true
	do
		sleep 1000;
	done