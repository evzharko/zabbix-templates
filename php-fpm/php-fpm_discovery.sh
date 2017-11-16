#!/bin/bash 
LOG_trn="/etc/zabbix/scripts/php-fpm/log_trn"
LOG_osvita="/etc/zabbix/scripts/php-fpm/log_osvita" 
LOG_vse10="/etc/zabbix/scripts/php-fpm/log_vse10" 
curl -s https://www.trn.ua/status > $LOG_trn
curl -s https://www.education.ua/status > $LOG_osvita
curl -s https://vse10.com.ua/status > $LOG_vse10
SCRIPT_NAME=/ping SCRIPT_FILENAME=/ping REQUEST_METHOD=GET cgi-fcgi -bind -connect 127.0.0.1:9002 >> $LOG_trn