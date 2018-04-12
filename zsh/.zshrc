

ZSH_THEME="my_theme"

plugins=(
  git
  autopep8
  command-not-found
  npm
  sudo
)

### Aliases

alias pi="ssh pi@192.168.0.20"
alias whatsbackup="~/dotfiles/backup/checklog.py"
alias cirrus="ssh ilsenato@login.cirrus.ac.uk"
alias weather="curl wttr.in"
alias uni="cd /home/ilya/Documents/uni_year3/"
alias ranger='ranger -r ~/dotfiles/ranger'
alias r='ranger -r ~/dotfiles/ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

### Env

export ZSH=/home/ilya/.oh-my-zsh
export BACKUPLOG=~/dotfiles/backup/shortlog.txt
export http_proxy=
export LANG=en_US.UTF-8
export BROWSER=/usr/bin/google-chrome-stables
export EDITOR=/usr/bin/vim

###Setup

source $ZSH/oh-my-zsh.sh
xrdb ~/.Xresources
date +"%A %D %T"
echo "sup"
(cat ~/.cache/wal/sequences &)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
