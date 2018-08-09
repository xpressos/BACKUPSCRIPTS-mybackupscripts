#!/bin/bash

LOGFILE="/var/log/rsynctml/rsynctm.log"
TIMESTAMP=`date '+%d-%m-%Y - %H:%M:%S'`

echo -e "\n\n===================== \n$TIMESTAMP \n=====================" >> $LOGFILE

/usr/local/bin/rsync-time-backup/rsync_tmbackup.sh --rsync-set-flags '-aAX -H' / /backup/rsynctb /usr/local/bin/rsync-time-backup/rsynctm-exclude.txt >> $LOGFILE

echo -e "\n========================================== \n" >> $LOGFILE
