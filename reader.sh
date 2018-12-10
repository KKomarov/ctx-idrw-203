#!/usr/bin/env bash

echo "Start polling $(date)" | tee -a rf125.log
POLL_LINE='sudo ./rfid_app/ctx-idrw-203 -r'
TS_LINE='date --iso-8601=seconds'

while true; do
	CUR=`$POLL_LINE`
	while [ "$CUR" == "$LAST" ]; do
		CUR=`$POLL_LINE`
	done
	LAST=$CUR
	echo `$TS_LINE` $CUR | tee -a rf125.log
done
