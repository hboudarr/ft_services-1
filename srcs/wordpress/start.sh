#! /bin/sh

wp-cli --allow-root core install --path=/var/www/wordpress --url=http://192.168.64.12:5050 --title="hherin" --admin_user=hherin --admin_password=hherin --admin_email=hherin@gmail.com
mysql -u hherin -phherin -h mysql -D Wordpress -P 3306 < /home/new-user.sql

php -S 0.0.0.0:5050 -t /var/www/wordpress