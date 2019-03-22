ZSH_THEME="mod_agnoster"

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
alias themes='cd /run/media/ilya/SD/Pictures/wallpapers; ls'
alias wal='wal -o /home/ilya/dotfiles/colorchange.sh'
alias jup='jupyter notebook --NotebookApp.iopub_data_rate_limit=10000000'
alias card='cd /mnt/SD'

### Env

export FONTCONFIG_PATH=/etc/fonts
export ZSH=/home/ilya/.oh-my-zsh
export BACKUPLOG=~/dotfiles/backup/shortlog.txt
export http_proxy=
export LANG=en_GB.UTF-8
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/vim
#export PATH="$PATH:/home/ilya/miniconda3/bin"
export LC_ALL=en_GB.UTF-8


###Setup

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
(cat ~/.cache/wal/sequences &)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#. /home/ilya/miniconda3/etc/profile.d/conda.sh
