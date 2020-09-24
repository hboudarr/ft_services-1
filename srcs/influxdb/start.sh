# !/bin/sh

influxd &
sleep 5

influx -execute "CREATE USER hherin WITH PASSWORD 'hherin' WITH ALL PRIVILEGES"

while true
do
	sleep 1;
done