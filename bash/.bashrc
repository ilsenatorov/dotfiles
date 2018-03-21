# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/nano
export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200
alias zotero="/usr/share/zotero/zotero"
alias pi="ssh pi@192.168.0.20"
alias whatsbackup="/backup/checklog.py"
alias cirrus="ssh ilsenato@login.cirrus.ac.uk"
test -s ~/.alias && . ~/.alias || true
konsole -e cmake -s --noclose
alias checkmail="less +G /var/spool/mail/ilya"
alias weather="curl wttr.in"
alias uni="cd /home/ilya/Documents/uni_year3/"
alias aristotle="ssh zcbtise@aristotle.rc.ucl.ac.uk"
alias ranger='ranger --confdir=~/dotfiles/ranger'
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
export BACKUPLOG=/backup/shortlog.txt
export http_proxy=
. /home/ilya/torch/install/bin/torch-activate


. /home/ilya/torch/install/bin/torch-activate


. /home/ilya/torch/install/bin/torch-activate

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
