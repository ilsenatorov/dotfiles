t=0
toggle() {
    t=$(((t + 1) % 2))
    }

function check_run () {
    local stat=$(ps aux | grep -c $1)
if [ $stat -eq 0 ]; then
	echo 'LB'
else
	echo 'Running'
fi
}

trap "toggle" USR1
while true; do
    if [ $t -eq 0 ]; then
        check_run "[b]org_backup"
    else
        cat ~/dotfiles/backup/.lastbackup.txt
    fi
    sleep 1 &
    wait
done
