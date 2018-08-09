#!/bin/bash

LOGFILE="/var/log/tarbackup/tarbackup.log"
TIMESTAMP=`date '+%d-%m-%Y - %H:%M:%S'`

echo -e "\n\n===================== \n$TIMESTAMP \n=====================\n" >> $LOGFILE 

sudo tar --warning='no-file-ignored' -cpzf /backup/tar/back`date +%d%m%y`.tar.gz --exclude-from=/usr/local/bin/tar-backup/tarexclude.txt / 2>> $LOGFILE

echo -e "\n========================================== \n" >> $LOGFILE
