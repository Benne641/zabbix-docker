#!/bin/bash
now=$(date)
read -p "Enter the container name: " container
read -p "Enter file name of backup to be taken: " backup
docker exec $container /usr/bin/mysqldump \
    -u root --password=root_pwd \
    zabbix  > /home/falcon/db-backups/$backup.sql &&
echo "the backup was successful on $now" >> /home/falcon/db-backups/logs.txt ||
echo " the backup failed on $now" >> /home/falcon/db-backups/logs.txt

#backs up zabbix db from specified container 
# remove input and make staic to work with cron 
