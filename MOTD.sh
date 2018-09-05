#!/bin/sh

# Script to print various input on startup, can be called from zshrc

upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
secs=$((${upSeconds}%60))
mins=$((${upSeconds}/60%60))
hours=$((${upSeconds}/3600%24))
days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh% 02dm% 02ds" "$days" "$hours" "$mins" "$secs"`
DISKS=`df -h | grep "^\/dev\/"`
TEMP=`vcgencmd measure_temp | grep -Po "\d\d\.\d"`
# Get status of telegram bot
zh=$(ps aux | grep -c "[Z]henya")
if [ $zh -eq 0 ]; then
	ZHENYA='Dead'
else
	ZHENYA='Alive'
fi
# Get status of ftp server
ftp=$(systemctl is-active vsftpd | grep -c "ina[c]tive")
if [ $ftp -eq 0 ]; then
	FTP='Alive'
else
	FTP='Dead'
fi


# get the load averages
read one five fifteen rest < /proc/loadavg
# Echo full status
echo "
Date...............: `date +"%A, %e %B %Y, %r"`
Running Processes..: `ps ax | wc -l | tr -d " "`
Uptime.............: ${UPTIME}
Load Averages......: ${one}, ${five}, ${fifteen} (1, 5, 15 min)
Temperature........: ${TEMP} °C

FTP................: ${FTP}
Zhenya.............: ${ZHENYA}

Disks:
${DISKS}    "
