#!/bin/sh
TEMP_LOG="/home/ilya/dotfiles/polybar/.redshift_temp.log"
CURR_VAL=$(cat $TEMP_LOG)
NEW_VAL=$(($CURR_VAL $1))
echo $NEW_VAL > $TEMP_LOG
redshift -P -O $NEW_VAL
exit 0