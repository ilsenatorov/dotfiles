#!/bin/zsh
source ~/dotfiles/.sensitive
MY_IP=$(curl -q ifconfig.me)
MY_OLD_IP=$(cat ~/dotfiles/myip/.oldip.txt)

if [[ "$MY_IP" == "$MY_OLD_IP" ]]; then
    echo "IP is the same"
else
    echo "IP has changed to $MY_IP"
    echo "The new IP is: $MY_IP" | mail -s "IP Change" $EMAIL
    echo $MY_IP > ~/dotfiles/myip/.oldip.txt
fi
