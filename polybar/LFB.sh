. ~/.cache/wal/colors.sh
t=0
toggle() {
    t=$(((t + 1) % 2))
    }
trap "toggle" USR1

function check_run () {
local stat=$(ps aux | grep -c $1)
if [ $stat -eq 0 ]; then
	echo "%{u$color1 +u}LFB"
else
	echo "%{u$color5 +u}FB Running"
fi
}

while true; do
    if [ $t -eq 0 ]; then
        check_run "[b]org_backup"
    else
        cat ~/dotfiles/backup/.lastbackup.txt
    fi
    sleep 1 &
    wait
done
