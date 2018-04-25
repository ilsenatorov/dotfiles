bg="%{B#161616}"
fg="%{F#FFFFFF}"
red="%{B#E84F4F}"
f_green="%{F#B7CE42}"
f_red="%{F#E84F4F}"


Clock() {
	DATETIME=$(date "+%T %a %b %d")
	TIME=$(date "+%T")
	echo "$f_green\ue015$fg $TIME"
}

Date() {
	DATE=$(date "+%a %b %d")
	echo "$f_green\ue225$fg $DATE"
}


Battery() {
	BATPERC=$(acpi --battery | cut -d, -f2)

#	if [ "$BATPERC" ]
#	then
#		echo -e "WHADUHECKWHADUHECK"
#	fi


	echo "$f_green\ue040$fg $BATPERC"
}


Workspaces() {
	WS=$(~/dotfiles/lemonbar/ws.sh)
	echo "$WS"
}




Volume() {
	vol=$(amixer get Master | sed -n 's/^.*\[\([0-9]\+\)%.*$/\1/p'| uniq)
	perc="%"
	echo "$f_green\ue05d$fg $vol$perc"
}

Memory() {
	mem=$(free -m | grep -E 'Mem' | awk '{print $3}')
	mb="mB"
	echo "$f_green\ue021$fg $mem$mb"
}

Processor() {
#	freq=$(lscpu | grep "CPU MHz" | awk '{print $3}')
#	hz="MHz"
#	echo "$f_green\ue026$fg $freq$hz"

	usage=$(grep 'cpu ' /proc/stat | awk '{print ($2+$4)*100/($2+$4+$5)}' | cut -c1-4 )
	perc="%"
	echo "$f_green\ue026$fg $usage$perc"

}



while true; do
	buf="$bg"
	buf="$buf%{l}"
	buf="$buf $(Volume)"
	buf="$buf %{c}"
	buf="$buf $(Workspaces)"
	buf="$buf %{r}"
	buf="$buf $(Processor)"
	buf="$buf $(Memory)"
	buf="$buf $(Battery)"
	buf="$buf $(Date)"
	buf="$buf $(Clock) %{O10}"
	echo -e $buf
	sleep 0.5
done
