#!/bin/zsh

# Script to print various input on startup, can be called from zshrc
###

### COLORS

RED='\033[0;31m'
NC='\033[0m' # No Color

### SETUP

upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
secs=$((${upSeconds}%60))
mins=$((${upSeconds}/60%60))
hours=$((${upSeconds}/3600%24))
days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh% 02dm% 02ds" "$days" "$hours" "$mins" "$secs"`
DISKS=`df -h | grep "^\/dev\/"`
TEMP=`vcgencmd measure_temp | grep -Po "\d\d\.\d"`

### Function to check if process is alive
function alive()
{
    local stat=$(ps aux | grep -c $1)
if [ $stat -eq 0 ]; then
	echo 'Dead'
else
	echo 'Alive'
fi
}


# Get status of telegram bot
ZHENYA=$(alive "[Z]henya")
HELPER=$(alive "[H]elper")
ZNC=$(alive "[z]nc")
FTP=$(alive "[f]tp")
# Get backups info
BACKUPLOG='/home/pi/dotfiles/backup/allbackups.log'
BIGBACKUP=$(head -n 1 $BACKUPLOG)
SMALLBACKUP=$(head -n 2 $BACKUPLOG | tail -n 1)
PIBACKUP=$(tail -n 1 $BACKUPLOG)
DOCUMENTS=$(cat ~/dotfiles/backup/.lastdocs.txt)

# get the load averages
read one five fifteen rest < /proc/loadavg

# Echo full status
echo "
${RED}Info:${NC}
Date...............: `date +"%A, %e %B %Y, %r"`
Running Processes..: `ps ax | wc -l | tr -d " "`
Uptime.............: ${UPTIME}
Load Averages......: ${one}, ${five}, ${fifteen} (1, 5, 15 min)
Temperature........: ${TEMP} °C

${RED}Services:${NC}
FTP................: ${FTP}
ZNC................: ${ZNC}
Zhenya.............: ${ZHENYA}
Helper.............: ${HELPER}

${RED}Disks:${NC}
${DISKS}    

${RED}Backups:${NC}
Big................: ${BIGBACKUP}
Small..............: ${SMALLBACKUP}
Pi.................: ${PIBACKUP}
Documents..........: ${DOCUMENTS}
"
