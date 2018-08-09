#!/bin/bash

LOGFILE="/var/log/tarbackup/tarbackup.log"
TIMESTAMP=`date '+%d-%m-%Y - %H:%M:%S'`

echo -e "\n\n===================== \n$TIMESTAMP \n=====================" >> $LOGFILE 

sudo tar --warning='no-file-ignored' -cpzf /backup/back090818.tar.gz --exclude-from=/usr/local/bin/tar-backup/tarexclude.txt / >> /var/log/tarbackup/tarbackup.log

echo -e "\n========================================== \n" >>
