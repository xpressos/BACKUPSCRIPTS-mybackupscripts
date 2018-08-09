#!/bin/bash

LOGFILE="/var/log/rsynctm/rsynctm.log"
TIMESTAMP=`date '+%d-%m-%Y - %H:%M:%S'`

echo -e "\n\n===================== \n$TIMESTAMP \n=====================" >> $LOGFILE

/usr/local/bin/rsync-time-backup/rsync_tmbackup.sh --rsync-set-flags '-aAX -H' / /backup/rsynctb /usr/local/bin/rsync-time-backup/exclude.txt >> /var/log/rsynctm/rsynctm.log

echo -e "\n========================================== \n" >> $LOGFILE
