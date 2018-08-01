ZSH_THEME="agnoster"

plugins=(
  git
  autopep8
  command-not-found
  npm
  sudo
)

### Aliases

alias ranger='ranger -r ~/dotfiles/ranger'
alias r='ranger -r ~/dotfiles/ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias themes='cd ~/Pictures/wallpapers; ls'
alias wal='wal -o /home/ilya/dotfiles/colorchange.sh'
alias jup='jupyter notebook --NotebookApp.iopub_data_rate_limit=10000000'

### Env

export FONTCONFIG_PATH=/etc/fonts
export ZSH=/home/ilya/.oh-my-zsh
export BACKUPLOG=~/dotfiles/backup/shortlog.txt
export http_proxy=
export LANG=en_GB.UTF-8
export BROWSER=/usr/bin/google-chrome-stable
export EDITOR=/usr/bin/vim
export KEY_MODELLER='MODELIRANJE'
export PATH="$PATH:/home/ilya/miniconda3/bin"
export PYTHONPATH="/home/ilya/bin/modeller9.20/lib/i386-intel8/python3.3"
export LD_LIBRARY_PATH="/home/ilya/bin/modeller9.20/lib/i386-intel8"
export LC_ALL=en_GB.UTF-8
export TERM=xterm-256color


###Setup

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
xrdb ~/.Xresources
(cat ~/.cache/wal/sequences &)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /home/ilya/miniconda3/etc/profile.d/conda.sh
