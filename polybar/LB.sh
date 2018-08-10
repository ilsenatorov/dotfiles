t=0

toggle() {
    t=$(((t + 1) % 2))
}


trap "toggle" USR1

while true; do
    if [ $t -eq 0 ]; then
        echo LB
    else
        cat ~/dotfiles/backup/.lastbackup.txt
    fi
    sleep 1 &
    wait
done
