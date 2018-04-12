#!/bin/bash

DATE=`date '+%Y/%m/%d %H:%M:%S'`
echo "" >> ./unilogs.txt
gdrive sync upload ~/Documents/ 12HX9Nwrr1MXECLbdsZYyUe42HAuR_wXu | tee -a ./unilogs.txt
echo "the_date" $DATE >> ./unilogs.txt
grep -A1 "Sync finished" ./unilogs.txt | grep -P -o "\d+\/\d+\/\d+ \d+:\d+:\d+" | tail -1 > ./.lastunibackup.txt
