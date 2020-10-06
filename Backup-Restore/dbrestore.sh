#!/bin/bash
read -p "Enter the container name: " container
read -p "Enter the file name of the db backup: " dbdump
mysql -uzabbix -pzabbix zabbix < $dbdump \
&& echo "$dbdump was restored to $container" \
|| echo "$dbdump was not restored to $container"

# restores a db backup to a container database


