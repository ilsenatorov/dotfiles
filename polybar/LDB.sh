. ~/.cache/wal/colors.sh
t=0
toggle() {
    t=$(((t + 1) % 2))
    }
trap "toggle" USR1

function check_run () {
local stat=$(ps aux | grep -c $1)
if [ $stat -eq 0 ]; then
	echo "%{u$color1 +u}LDB"
else
	echo "%{u$color5 +u}DB Running"
fi
}

while true; do
    if [ $t -eq 0 ]; then
        check_run "[r]sync"
    else
        cat ~/dotfiles/backup/.lastdocs.txt
    fi
    sleep 1 &
    wait
done