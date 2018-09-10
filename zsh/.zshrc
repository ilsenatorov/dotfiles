ZSH_THEME="mod_agnoster"

plugins=(
  fzf
  git
  autopep8
  sudo
  colored-man-pages
  pip
)

### Aliases

alias ranger='ranger -r ~/dotfiles/ranger'
alias r='ranger -r ~/dotfiles/ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
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
export PATH="$PATH:/home/ilya/miniconda3/bin"
export LC_ALL=en_GB.UTF-8
export TERM=xterm-256color


###Setup

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
(cat ~/.cache/wal/sequences &)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /home/ilya/miniconda3/etc/profile.d/conda.sh
