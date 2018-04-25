WSJSON=$(i3-msg -t get_workspaces)
PARSED=$(python /home/factor/.bin/ws.py "$WSJSON")
echo "$PARSED"
