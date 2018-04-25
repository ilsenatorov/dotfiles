#!/bin/bash
cd /home/ilya/dotfiles/backup

DATE=`date '+%Y/%m/%d %H:%M:%S'`
echo "" >> ./unilogs.txt
gdrive sync upload /home/ilya/Documents/ 1vZDYg4OlEd3WhHUDKQWIPdZUhLccHV3y | tee -a ./unilogs.txt
echo "the_date" $DATE >> ./unilogs.txt
grep -A1 "Sync finished" ./unilogs.txt | grep -P -o "\d+\/\d+\/\d+ \d+:\d+:\d+" | tail -1 > ./.lastunibackup.txt
