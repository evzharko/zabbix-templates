#!/bin/bash
LOG_trn="/etc/zabbix/scripts/php-fpm/log_trn"
LOG_osvita="/etc/zabbix/scripts/php-fpm/log_osvita"
LOG_vse10="/etc/zabbix/scripts/php-fpm/log_vse10"

case $1 in
'pool_trn'			)
    grep pool $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'process_manager_trn'	)
    grep 'process manager' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'start_time_trn'		)
    grep 'start time' $LOG_trn | cut -d":" -f 2,3,4,5 | sed -e 's/ //g' | sed -e 's/+/\ +/';;
'start_since_trn'		)
    grep 'start since' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'accepted_conn_trn'		)
    grep 'accepted conn' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'listen_queue_trn'		)
    grep 'listen queue' $LOG_trn | grep -v max | grep -v len | cut -d":" -f 2 | sed -e 's/ //g';;
'max_listen_queue_trn'	)
    grep 'max listen queue' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'listen_queue_len_trn'	)
    grep 'listen queue len' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'idle_processes_trn'	)
    grep 'idle processes' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'active_processes_trn'	)
    grep 'active processes' $LOG_trn | grep -v max | cut -d":" -f 2 | sed -e 's/ //g';;
'total_processes_trn'	)
    grep 'total processes' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'max_active_processes_trn'	)
    grep 'max active processes' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'max_children_reached_trn'	)
    grep 'max children reached' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'slow_requests_trn'		)
    grep 'slow requests' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
'ping'		)
    grep 'pong' $LOG_trn | cut -d":" -f 2 | sed -e 's/ //g';;
esac 

case $1 in
'pool_osvita'			)
    grep pool $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
'process_manager_osvita'	)
    grep 'process manager' $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
'start_time_osvita'		)
    grep 'start time' $LOG_osvita | cut -d":" -f 2,3,4,5 | sed -e 's/ //g' | sed -e 's/+/\ +/';;
'start_since_osvita'		)
    grep 'start since' $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
'accepted_conn_osvita'		)
    grep 'accepted conn' $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
'listen_queue_osvita'		)
    grep 'listen queue' $LOG_osvita | grep -v max | grep -v len | cut -d":" -f 2 | sed -e 's/ //g';;
'max_listen_queue_osvita'	)
    grep 'max listen queue' $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
'listen_queue_len_osvita'	)
    grep 'listen queue len' $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
'idle_processes_osvita'	)
    grep 'idle processes' $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
'active_processes_osvita'	)
    grep 'active processes' $LOG_osvita | grep -v max | cut -d":" -f 2 | sed -e 's/ //g';;
'total_processes_osvita'	)
    grep 'total processes' $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
'max_active_processes_osvita'	)
    grep 'max active processes' $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
'max_children_reached_osvita'	)
    grep 'max children reached' $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
'slow_requests_osvita'		)
    grep 'slow requests' $LOG_osvita | cut -d":" -f 2 | sed -e 's/ //g';;
esac 

case $1 in
'pool_vse10'			)
    grep pool $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
'process_manager_vse10'	)
    grep 'process manager' $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
'start_time_vse10'		)
    grep 'start time' $LOG_vse10 | cut -d":" -f 2,3,4,5 | sed -e 's/ //g' | sed -e 's/+/\ +/';;
'start_since_vse10'		)
    grep 'start since' $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
'accepted_conn_vse10'		)
    grep 'accepted conn' $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
'listen_queue_vse10'		)
    grep 'listen queue' $LOG_vse10 | grep -v max | grep -v len | cut -d":" -f 2 | sed -e 's/ //g';;
'max_listen_queue_vse10'	)
    grep 'max listen queue' $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
'listen_queue_len_vse10'	)
    grep 'listen queue len' $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
'idle_processes_vse10'	)
    grep 'idle processes' $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
'active_processes_vse10'	)
    grep 'active processes' $LOG_vse10 | grep -v max | cut -d":" -f 2 | sed -e 's/ //g';;
'total_processes_vse10'	)
    grep 'total processes' $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
'max_active_processes_vse10'	)
    grep 'max active processes' $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
'max_children_reached_vse10'	)
    grep 'max children reached' $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
'slow_requests_vse10'		)
    grep 'slow requests' $LOG_vse10 | cut -d":" -f 2 | sed -e 's/ //g';;
esac

